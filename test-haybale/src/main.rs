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
    let default_uc_hook =
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

    // Hook for UNSAFE_unverified() - returns the underlying value without verification
    let unsafe_unverified_hook =
        |state: &mut State<DefaultBackend>, call: &dyn IsCall| -> Result<ReturnValue<_>, Error> {
            println!("unsafe unverif");
            let call_args = call.get_arguments();

            if call_args.len() < 1 {
                return Err(Error::OtherError(
                    "UNSAFE_unverified needs at least 1 argument".into(),
                ));
            }

            let tainted_operand = &call_args[0].0;
            let tainted_bv = state.operand_to_bv(tainted_operand)?;

            // Read the actual integer value from the tainted_volatile object
            let value_bv = state.read(&tainted_bv, 32)?;

            Ok(ReturnValue::Return(value_bv))
        };

    // hook for (*array[0] = ...)
    let rlbox_assign_hook =
        |state: &mut State<DefaultBackend>, call: &dyn IsCall| -> Result<ReturnValue<_>, Error> {
            let call_args = call.get_arguments();

            if call_args.len() < 2 {
                return Err(Error::OtherError(
                    "Assignment needs at least 2 arguments".into(),
                ));
            }

            let target_operand = &call_args[0].0;
            let target_bv = state.operand_to_bv(target_operand)?;

            let value_operand = &call_args[1].0;
            let value_bv = state.operand_to_bv(value_operand)?;

            let actual_value = state.read(&value_bv, 32)?;

            state.write(&target_bv, actual_value)?;

            Ok(ReturnValue::Return(target_bv))
        };

    // try to add hook for precondition
    let sandboxed_index_hook = |state: &mut State<DefaultBackend>,
                                call: &dyn IsCall|
     -> Result<ReturnValue<_>, Error> {
        let call_args = call.get_arguments();

        if call_args.len() < 2 {
            return Err(Error::OtherError(
                "Insufficient arguments for array access".into(),
            ));
        }

        let index_operand = &call_args[1].0;
        let index_bv = match state.operand_to_bv(index_operand) {
            Ok(bv) => bv,
            Err(e) => return Err(e),
        };

        // Read the integer value from the pointer (32 bits for i32)
        let index_value_bv = state.read(&index_bv, 32)?;

        let index_value = index_value_bv.as_u64().expect("OOPPPSSSS") as i64;

        // Bounds check: hardcoding for array size of 4 (int[4])
        const ARRAY_SIZE: i64 = 4;
        if index_value < 0 || index_value >= ARRAY_SIZE {
            return Err(Error::OtherError(format!(
                "Array index {} out of bounds [0, {})",
                index_value, ARRAY_SIZE
            )));
        }

        println!(
            "Bounds check passed: index {} is within bounds [0, {})",
            index_value, ARRAY_SIZE
        );

        // If bounds check passes, perform the array access manually
        let array_operand = &call_args[0].0;
        let array_base_bv = match state.operand_to_bv(array_operand) {
            Ok(bv) => bv,
            Err(e) => return Err(e),
        };

        const ELEMENT_SIZE: u32 = 4;
        let offset_bv = index_bv.mul(&state.bv_from_u32(ELEMENT_SIZE as u32, index_bv.get_width()));
        let element_addr_bv = array_base_bv.add(&offset_bv);

        Ok(ReturnValue::Return(element_addr_bv))
    };

    let std_array_index_hook =
        |state: &mut State<DefaultBackend>, call: &dyn IsCall| -> Result<ReturnValue<_>, Error> {
            let call_args = call.get_arguments();

            if call_args.len() < 2 {
                return Err(Error::OtherError(
                    "Insufficient arguments for std::array access".into(),
                ));
            }

            // Get the index value from the second argument
            let index_operand = &call_args[1].0;
            let index_bv = state.operand_to_bv(index_operand)?;

            // Read the integer value from the pointer (32 bits for i32)
            let index_value_bv = state.read(&index_bv, 32)?;
            let index_value = index_value_bv.as_u64().expect("OOPPPSSSS") as i64;

            // Bounds check: array size is 4
            const ARRAY_SIZE: i64 = 4;
            if index_value < 0 || index_value >= ARRAY_SIZE {
                return Err(Error::OtherError(format!(
                    "std::array index {} out of bounds [0, {})",
                    index_value, ARRAY_SIZE
                )));
            }

            println!(
                "std::array bounds check passed: index {} is within bounds [0, {})",
                index_value, ARRAY_SIZE
            );

            // Get the array base address (first argument)
            let array_operand = &call_args[0].0;
            let array_base_bv = state.operand_to_bv(array_operand)?;

            // Calculate the address of the indexed element
            const ELEMENT_SIZE: u32 = 4; // bytes per int
            let index_as_bv = state.bv_from_u32(index_value as u32, array_base_bv.get_width());
            let offset_bv =
                index_as_bv.mul(&state.bv_from_u32(ELEMENT_SIZE, array_base_bv.get_width()));
            let element_addr_bv = array_base_bv.add(&offset_bv);

            // Return the ADDRESS of the element (reference)
            Ok(ReturnValue::Return(element_addr_bv))
        };

    let rlbox_deref_hook = |state: &mut State<DefaultBackend>,
                            call: &dyn IsCall|
     -> Result<ReturnValue<_>, Error> {
        println!("DEREF");
        let call_args = call.get_arguments();

        if call_args.len() < 1 {
            return Err(Error::OtherError(
                "operator* needs at least 1 argument".into(),
            ));
        }

        // Get the tainted pointer object (this)
        let tainted_ptr_operand = &call_args[0].0;
        let tainted_ptr_bv = state.operand_to_bv(tainted_ptr_operand)?;
        println!("Reading from: {tainted_ptr_bv:?}");

        // Read the actual array pointer from the tainted pointer object
        let array_ptr_bv = state.read(&tainted_ptr_bv, state.proj.pointer_size_bits() as u32)?;

        // Return the array pointer (this is what (*sandbox_array) should return)
        Ok(ReturnValue::Return(array_ptr_bv))
    };

    let malloc_in_sandbox_hook =
        |state: &mut State<DefaultBackend>, _call: &dyn IsCall| -> Result<ReturnValue<_>, Error> {
            // Allocate concrete memory for a 4-element int array
            let array_size_bits = 4 * 32 as u64; // 4 integers * 32 bits each
            let concrete_array_ptr = state.allocate(array_size_bits);

            println!(
                "malloc_in_sandbox allocated concrete array at: {:?}",
                concrete_array_ptr
            );

            Ok(ReturnValue::Return(concrete_array_ptr))
        };

    let mut config: Config<DefaultBackend> = Config::default();
    config.function_hooks.add_uc_hook(&default_uc_hook);

    // indexing into sandboxed array
    config.function_hooks.add_cpp_demangled(
        "rlbox::tainted_base_impl<rlbox::tainted_volatile, int [4], rlbox::rlbox_test_sandbox>::operator[]<int>",
        &sandboxed_index_hook
    );
    // indexing into std lib array
    config.function_hooks.add_cpp_demangled(
        "std::__1::array<int, (unsigned long)4>::operator[][abi:un170006]",
        &std_array_index_hook,
    );
    // hook for unsafe verified
    config.function_hooks.add_cpp_demangled(
        "rlbox::tainted_base_impl<rlbox::tainted_volatile, int, rlbox::rlbox_test_sandbox>::UNSAFE_unverified",
        &unsafe_unverified_hook,
    );
    // hook for assignment of rlbox vals
    config.function_hooks.add_cpp_demangled(
        "rlbox::tainted_volatile<int, rlbox::rlbox_test_sandbox>::operator=<int>",
        &rlbox_assign_hook,
    );
    // hook for deref of rlbox vals
    config.function_hooks.add_cpp_demangled(
        "rlbox::tainted_base_impl<rlbox::tainted, int (*) [4], rlbox::rlbox_test_sandbox>::operator*",
        &rlbox_deref_hook
    );
    // malloc array in sandbox hook
    config.function_hooks.add_cpp_demangled(
        "rlbox::rlbox_sandbox<rlbox::rlbox_test_sandbox>::malloc_in_sandbox<int [4]>",
        &malloc_in_sandbox_hook,
    );

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
