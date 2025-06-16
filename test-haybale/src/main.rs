use haybale::{
    Config, Error, Project, ReturnValue, State,
    backend::{BV, DefaultBackend},
    function_hooks::IsCall,
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

    // Hook for UNSAFE_unverified() - this returns the underlying value without verification
    let unsafe_unverified_hook =
        |state: &mut State<DefaultBackend>, call: &dyn IsCall| -> Result<ReturnValue<_>, Error> {
            let call_args = call.get_arguments();

            if call_args.len() < 1 {
                return Err(Error::OtherError(
                    "UNSAFE_unverified needs at least 1 argument".into(),
                ));
            }

            // Get the tainted value (first argument, which is 'this')
            let tainted_operand = &call_args[0].0;
            let tainted_bv = match state.operand_to_bv(tainted_operand) {
                Ok(bv) => bv,
                Err(e) => return Err(e),
            };

            // For UNSAFE_unverified, we just read the underlying value
            // The tainted wrapper typically contains the actual value
            let value_bv = match state.read(&tainted_bv, 32) {
                Ok(bv) => bv,
                Err(e) => return Err(e),
            };

            println!("UNSAFE_unverified returning: {:?}", value_bv);
            Ok(ReturnValue::Return(value_bv))
        };

    // Hook for rlbox sandbox array assignment operator[] (the one that sets values)
    let rlbox_array_assign_hook =
        |state: &mut State<DefaultBackend>, call: &dyn IsCall| -> Result<ReturnValue<_>, Error> {
            let call_args = call.get_arguments();

            if call_args.len() < 2 {
                return Err(Error::OtherError(
                    "Array assignment needs at least 2 arguments".into(),
                ));
            }

            // This is similar to your existing hook but for assignment
            // Get the index value from the second argument
            let index_operand = &call_args[1].0;
            let index_bv = match state.operand_to_bv(index_operand) {
                Ok(bv) => bv,
                Err(e) => return Err(e),
            };

            // Read the index value
            let index_value_bv = match state.read(&index_bv, 32) {
                Ok(bv) => bv,
                Err(e) => return Err(e),
            };

            let index_value = index_value_bv.as_u64().expect("Failed to convert index") as i32;

            // Bounds check
            const ARRAY_SIZE: i32 = 4;
            if index_value < 0 || index_value >= ARRAY_SIZE {
                return Err(Error::OtherError(format!(
                    "Sandbox array assignment index {} out of bounds [0, {})",
                    index_value, ARRAY_SIZE
                )));
            }

            // Get the array base address
            let array_operand = &call_args[0].0;
            let array_base_bv = match state.operand_to_bv(array_operand) {
                Ok(bv) => bv,
                Err(e) => return Err(e),
            };

            // Calculate element address
            const ELEMENT_SIZE: u32 = 4;
            let offset_bv = index_bv.mul(&state.bv_from_u32(ELEMENT_SIZE, index_bv.get_width()));
            let element_addr_bv = array_base_bv.add(&offset_bv);

            // Return the address for assignment
            Ok(ReturnValue::Return(element_addr_bv))
        };

    // Hook for malloc_in_sandbox - returns a symbolic pointer to allocated memory
    let malloc_in_sandbox_hook =
        |state: &mut State<DefaultBackend>, call: &dyn IsCall| -> Result<ReturnValue<_>, Error> {
            // Allocate 16 bytes for int32_t[4] array
            let allocated_ptr = state.allocate(128 as u64); // 16 bytes = 128 bits
            println!("malloc_in_sandbox allocated: {:?}", allocated_ptr);
            Ok(ReturnValue::Return(allocated_ptr))
        };

    // try to add hook for precondition
    let sandboxed_index_hook = |state: &mut State<DefaultBackend>,
                                call: &dyn IsCall|
     -> Result<ReturnValue<_>, Error> {
        let call_args = call.get_arguments();

        // Extract the index argument (second argument)
        // Based on your output, this should be the second LocalOperand
        if call_args.len() < 2 {
            return Err(Error::OtherError(
                "Insufficient arguments for array access".into(),
            ));
        }

        // Get the index value from the second argument
        // Convert the operand to a BV for reading
        let index_operand = &call_args[1].0;
        let index_bv = match state.operand_to_bv(index_operand) {
            Ok(bv) => bv,
            Err(e) => return Err(e),
        };

        // Read the integer value from the pointer (32 bits for i32)
        let index_value_bv = match state.read(&index_bv, 32) {
            Ok(bv) => bv,
            Err(e) => return Err(e),
        };

        // Convert BitVector to i32
        let index_value = index_value_bv.as_u64().expect("OOPPPSSSS") as i32;

        // Bounds check: array size is 4 (int[4])
        const ARRAY_SIZE: i32 = 4;
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
        // Get the array base address (first argument)
        let array_operand = &call_args[0].0;
        let array_base_bv = match state.operand_to_bv(array_operand) {
            Ok(bv) => bv,
            Err(e) => return Err(e),
        };

        // Calculate the address of the indexed element
        // For int[4], each element is 4 bytes (32 bits)
        const ELEMENT_SIZE: u32 = 4; // bytes per int
        let offset_bv = index_bv.mul(&state.bv_from_u32(ELEMENT_SIZE as u32, index_bv.get_width()));
        let element_addr_bv = array_base_bv.add(&offset_bv);

        // Return the ADDRESS of the element (reference), not the value
        // operator[] returns a reference, so we return the pointer to the element
        println!("{element_addr_bv:?}");
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
            let index_bv = match state.operand_to_bv(index_operand) {
                Ok(bv) => bv,
                Err(e) => return Err(e),
            };

            // Try to use the index directly first (it might be a value, not a pointer)
            let index_value = if index_bv.get_width() <= 32 {
                // Likely a direct integer value
                index_bv.as_u64().expect("Failed to convert index") as i32
            } else {
                // Might be a pointer to an integer, try reading from it
                match state.read(&index_bv, 32) {
                    Ok(value_bv) => value_bv.as_u64().expect("Failed to convert index") as i32,
                    Err(_) => {
                        // If reading fails, treat it as a direct value
                        index_bv.as_u64().expect("Failed to convert index") as i32
                    }
                }
            };

            // Bounds check: array size is 4
            const ARRAY_SIZE: i32 = 4;
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
            let array_base_bv = match state.operand_to_bv(array_operand) {
                Ok(bv) => bv,
                Err(e) => return Err(e),
            };

            // Calculate the address of the indexed element
            const ELEMENT_SIZE: u32 = 4; // bytes per int
            let index_as_bv = state.bv_from_u32(index_value as u32, array_base_bv.get_width());
            let offset_bv =
                index_as_bv.mul(&state.bv_from_u32(ELEMENT_SIZE, array_base_bv.get_width()));
            let element_addr_bv = array_base_bv.add(&offset_bv);

            // Return the ADDRESS of the element (reference)
            Ok(ReturnValue::Return(element_addr_bv))
        };

    let mut config: Config<DefaultBackend> = Config::default();
    config.function_hooks.add_uc_hook(&default_uc_hook);

    // indexing into sandboxed array
    config.function_hooks.add_cpp_demangled("rlbox::tainted_base_impl<rlbox::tainted_volatile, int [4], rlbox::rlbox_test_sandbox>::operator[]<int>", &sandboxed_index_hook);
    // indexing into std lib array
    config.function_hooks.add_cpp_demangled(
        "std::__1::array<int, (unsigned long)4>::operator[][abi:un170006]",
        &std_array_index_hook,
    );
    // book for unsafe verified
    config.function_hooks.add_cpp_demangled(
        "rlbox::tainted_base_impl<rlbox::tainted_volatile, int, rlbox::rlbox_test_sandbox>::UNSAFE_unverified",
        &unsafe_unverified_hook,
    );
    // hook for assignment of rlbox vals
    config.function_hooks.add_cpp_demangled(
        "rlbox::tainted_volatile<int, rlbox::rlbox_test_sandbox>::operator=<int>",
        &rlbox_array_assign_hook,
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
