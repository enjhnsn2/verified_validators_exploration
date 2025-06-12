use haybale::{
    Config, Error, Project, ReturnValue, State, backend::DefaultBackend, function_hooks::IsCall,
    symex_function,
};
use llvm_ir::{Type, types::FPType};

fn get_bits_from_type(type_of: &Type, pointer_size: u64) -> u64 {
    match type_of {
        Type::VoidType => 0, // void has no size
        Type::IntegerType { bits } => *bits as u64,
        Type::PointerType { .. } => pointer_size, // Pointers are always pointer_size, not pointee size
        Type::FPType(fp_type) => match fp_type {
            FPType::Half => 16,
            FPType::BFloat => 16,
            FPType::Single => 32,
            FPType::Double => 64,
            FPType::FP128 => 128,
            FPType::X86_FP80 => 80,
            FPType::PPC_FP128 => 128,
        },
        Type::FuncType { .. } => pointer_size,
        Type::VectorType {
            element_type,
            num_elements,
            ..
        }
        | Type::ArrayType {
            element_type,
            num_elements,
        } => get_bits_from_type(&element_type, pointer_size) * *num_elements as u64,
        Type::StructType { element_types, .. } => element_types
            .iter()
            .map(|e| get_bits_from_type(e, pointer_size))
            .sum(),
        Type::NamedStructType { .. } => pointer_size, // Conservative estimate
        Type::X86_MMXType => 64,
        Type::X86_AMXType => 8192, // 8KB
        Type::MetadataType => panic!("Cannot return metadata type"),
        Type::LabelType => panic!("Cannot return label type"),
        Type::TokenType => panic!("Cannot return token type"),
    }
}

fn main() {
    let binding =
        |state: &mut State<DefaultBackend>, call: &dyn IsCall| -> Result<ReturnValue<_>, Error> {
            let func_type = state.type_of(call);
            let pointer_size = state.proj.pointer_size_bits();
            let func_name = &state.cur_loc.func.name;

            let ret = match &*func_type {
                Type::VoidType => Ok(ReturnValue::ReturnVoid),

                Type::IntegerType { bits } => {
                    let sym_name = format!("int_{}", func_name);
                    let val = state.new_bv_with_name(sym_name.into(), *bits as u32)?;
                    Ok(ReturnValue::Return(val))
                }

                Type::PointerType { pointee_type, .. } => {
                    // For pointers, allocate memory for what they point to
                    let pointee_bits = get_bits_from_type(&pointee_type, pointer_size as u64);
                    let ptr = if pointee_bits > 0 {
                        state.allocate(pointee_bits)
                    } else {
                        // For void pointers or zero-sized types, just return a symbolic pointer
                        let sym_name = format!("ptr_{}", func_name);
                        state.new_bv_with_name(sym_name.into(), pointer_size as u32)?
                    };
                    Ok(ReturnValue::Return(ptr))
                }

                Type::FuncType { .. } => {
                    // Function types as return values are function pointers
                    let sym_name = format!("funcptr_{}", func_name);
                    let ptr = state.new_bv_with_name(sym_name.into(), pointer_size as u32)?;
                    Ok(ReturnValue::Return(ptr))
                }

                Type::VectorType {
                    element_type,
                    num_elements,
                    ..
                } => {
                    let element_bits = get_bits_from_type(&element_type, pointer_size as u64);
                    let total_bits = element_bits * (*num_elements as u64);
                    let sym_name = format!("vec_{}", func_name);
                    let val = state.new_bv_with_name(sym_name.into(), total_bits as u32)?;
                    Ok(ReturnValue::Return(val))
                }

                Type::ArrayType {
                    element_type,
                    num_elements,
                } => {
                    let element_bits = get_bits_from_type(&element_type, pointer_size as u64);
                    let total_bits = element_bits * (*num_elements as u64);
                    let sym_name = format!("arr_{}", func_name);
                    let val = state.new_bv_with_name(sym_name.into(), total_bits as u32)?;
                    Ok(ReturnValue::Return(val))
                }

                Type::StructType { element_types, .. } => {
                    let total_bits: u64 = element_types
                        .iter()
                        .map(|e| get_bits_from_type(e, pointer_size as u64))
                        .sum();
                    let sym_name = format!("struct_{}", func_name);
                    let val = state.new_bv_with_name(sym_name.into(), total_bits as u32)?;
                    Ok(ReturnValue::Return(val))
                }

                Type::FPType(fptype) => {
                    let bits = get_bits_from_type(&Type::FPType(*fptype), pointer_size as u64);
                    let sym_name = format!("fp_{}", func_name);
                    let val = state.new_bv_with_name(sym_name.into(), bits as u32)?;
                    Ok(ReturnValue::Return(val))
                }

                Type::NamedStructType { .. } => {
                    todo!()
                }

                Type::X86_MMXType => {
                    let sym_name = format!("mmx_{}", func_name);
                    let val = state.new_bv_with_name(sym_name.into(), 64)?;
                    Ok(ReturnValue::Return(val))
                }

                Type::X86_AMXType => {
                    let sym_name = format!("amx_{}", func_name);
                    let val = state.new_bv_with_name(sym_name.into(), 8192)?;
                    Ok(ReturnValue::Return(val))
                }

                Type::MetadataType => Err(Error::OtherError("Cannot return metadata type".into())),

                Type::LabelType => Err(Error::OtherError("Cannot return label type".into())),

                Type::TokenType => Err(Error::OtherError("Cannot return token type".into())),
            };
            ret
        };

    let mut config: Config<DefaultBackend> = Config::default();
    config.function_hooks.add_default_hook(&binding);
    config.loop_bound = 1000;

    let project = Project::from_bc_path("../examples/test_verify_arrays.bc").unwrap();
    let mut em = symex_function(
        // "sandbox_array_index_checked",
        "sandbox_array_index_unchecked_unsafe",
        &project,
        config,
        None,
    )
    .unwrap();

    while let Some(path) = em.next() {
        match path {
            Ok(p) => match p {
                haybale::ReturnValue::Return(r) => println!("Function returns {r:?}"),
                haybale::ReturnValue::ReturnVoid => println!("Returns void"),
                haybale::ReturnValue::Throw(e) => println!("Throws error {e:?}"),
                haybale::ReturnValue::Abort => println!("Aborts"),
            },
            Err(e) => {
                // println!("{}", e);
                break;
            } // em.state().full_error_message_with_context(e)),
        }
    }
}
