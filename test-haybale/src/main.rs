use haybale::{
    Config, Error, Project, ReturnValue, State, backend::DefaultBackend, function_hooks::IsCall,
    symex_function,
};
use llvm_ir::Type;

mod types;
use types::get_bits_from_type;


fn main() {
    env_logger::init();

    // Maps function calls to symbolic return values
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

                Type::FuncType {
                    result_type: _,
                    param_types: _,
                    is_var_arg: _,
                } => {
                    todo!();
                    // // Function types as return values are function pointers
                    // let result_size = get_bits_from_type(&result_type, pointer_size as u64);
                    // let sym_name = format!("funcptr_{}", func_name);
                    // let ptr = state.new_bv_with_name(sym_name.into(), result_size as u32)?;
                    // Ok(ReturnValue::Return(ptr))
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
                    todo!();
                    // let sym_name = format!("mmx_{}", func_name);
                    // let val = state.new_bv_with_name(sym_name.into(), 64)?;
                    // Ok(ReturnValue::Return(val))
                }

                Type::X86_AMXType => {
                    todo!();
                    // let sym_name = format!("amx_{}", func_name);
                    // let val = state.new_bv_with_name(sym_name.into(), 8192)?;
                    // Ok(ReturnValue::Return(val))
                }

                Type::MetadataType => Err(Error::OtherError("Cannot return metadata type".into())),

                Type::LabelType => Err(Error::OtherError("Cannot return label type".into())),

                Type::TokenType => Err(Error::OtherError("Cannot return token type".into())),
            };
            ret
        };

    let mut config: Config<DefaultBackend> = Config::default();
    config.function_hooks.add_uc_hook(&binding);
    config.loop_bound = 1000;

    let project = Project::from_bc_path("../examples/host.bc").unwrap();
    let mut em = symex_function(
        // "sandbox_array_index_checked",
        // "sandbox_array_index_unchecked_safe",
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
                println!("{}", e);
                break;
            } // em.state().full_error_message_with_context(e)),
        }
    }
}
