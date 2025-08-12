use haybale::backend::Backend;
use haybale::{Config, Error, ReturnValue, State, backend::DefaultBackend, function_hooks::IsCall};
use llvm_ir::Type;
use log;
use llvm_ir::{Constant, Name, Operand};
use either::Either;
use crate::demangle::demangle_and_parse_cpp_function;
use crate::demangle::extract_function_name_from_complex;


// Type alias for cleaner function signatures
type HookResult = Result<ReturnValue<<DefaultBackend as Backend>::BV>, Error>;

/// Get call arguments with exact count validation
fn get_args_exact(
    call: &dyn IsCall,
    expected_count: usize,
) -> Result<Vec<&llvm_ir::Operand>, Error> {
    let call_args = call.get_arguments();
    if call_args.len() != expected_count {
        return Err(Error::OtherError(format!(
            "Expected {} arguments, got {}",
            expected_count,
            call_args.len()
        )));
    }
    Ok(call_args.iter().map(|(operand, _)| operand).collect())
}

/// Convert a call argument to a bitvector
fn get_operand(
    state: &mut State<DefaultBackend>,
    arg: &llvm_ir::Operand,
) -> Result<<DefaultBackend as Backend>::BV, Error> {
    state.operand_to_bv(arg)
}


/// Extract the function name from a dyn IsCall
fn get_function_name(call: &dyn IsCall) -> Option<&str> {
    match call.get_called_func() {
        Either::Right(Operand::ConstantOperand(cref)) => {
            match cref.as_ref() {
                Constant::GlobalReference { name: Name::Name(name), .. } => Some(name),
                _ => None,
            }
        }
        _ => None, // inline assembly
    }
}

/// EXAMPLE:   auto index = (*sandbox_array)[0].UNSAFE_unverified();
/// HOOKED_ON: rlbox::tainted_base_impl<rlbox::tainted_volatile, int, rlbox::rlbox_test_sandbox>::UNSAFE_unverified
// TODO: make generic for any type (currently hardcoded to int)
fn unsafe_unverified_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let call_args = get_args_exact(call, 1)?;
    let tainted_bv = get_operand(state, call_args[0])?;
    // Read the actual integer value from the tainted_volatile object
    let value_bv = state.read(&tainted_bv, 32)?;

    Ok(ReturnValue::Return(value_bv))
}

/// default hook for symbolizing return values for functions without explicit hooks
fn default_uc_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let func_type = state.type_of(call);
    let pointer_size = state.proj.pointer_size_bits();
    let func_name = &state.cur_loc.func.name;

    let call_target_name = get_function_name(call).unwrap();
    println!("DEFAULT_UC_HOOK: demangled name: {}", state.demangle(call_target_name));
    let true_func_name = extract_function_name_from_complex(&state.demangle(call_target_name)).unwrap();
    println!("DEFAULT_UC_HOOK: true function name: {:?}", true_func_name);
    // Try to parse the demangled function name
    match demangle_and_parse_cpp_function(call_target_name) {
        Ok(parsed_func) => {
            // println!("DEFAULT_UC_HOOK: Parsed function: {}", parsed_func.signature());
            // println!("  Namespace: {:?}", parsed_func.namespace);
            // println!("  Function name: {}", parsed_func.function_name);
            // println!("  Template args: {:?}", parsed_func.template_args);
            // println!("  Parameters: {:?}", parsed_func.parameters);
            // println!("  Return type: {:?}", parsed_func.return_type);
            // println!("  Is operator: {}", parsed_func.is_operator);
            // println!("  Is constructor: {}", parsed_func.is_constructor);
            // println!("  Is destructor: {}", parsed_func.is_destructor);
        }
        Err(e) => {
            println!("DEFAULT_UC_HOOK: Failed to parse function name: {}", e);
            println!("DEFAULT_UC_HOOK: Raw name: {}", state.demangle(call_target_name));
        }
    }

    // TODO: I suspect that much of this functionally is redundant with functionality already in Haybale
    let ret = match &*func_type {
        Type::VoidType => Ok(ReturnValue::ReturnVoid),

        Type::IntegerType { bits } => {
            let sym_name = format!("int_{}", func_name);
            let val = state.new_bv_with_name(sym_name.into(), *bits)?;
            Ok(ReturnValue::Return(val))
        }

        Type::PointerType { pointee_type, .. } => {
            // For pointers, allocate memory for what they point to
            // TODO: do we need to special case for null pointers?
            // let pointee_bits = get_bits_from_type(pointee_type, pointer_size as u64);
            let pointee_bits = state.size_in_bits(pointee_type).unwrap();
            let ptr = if pointee_bits > 0 {
                state.allocate(pointee_bits)
            } else {
                // For void pointers or zero-sized types, just return a symbolic pointer
                let sym_name = format!("ptr_{}", func_name);
                state.new_bv_with_name(sym_name.into(), pointer_size)?
            };
            Ok(ReturnValue::Return(ptr))
        }

        Type::FuncType {
            result_type: _,
            param_types: _,
            is_var_arg: _,
        } => {
            todo!();
        }

        Type::VectorType {
            element_type,
            num_elements,
            ..
        } => {
            let element_bits = state.size_in_bits(element_type).unwrap();
            let total_bits = element_bits * (*num_elements as u32);
            let sym_name = format!("vec_{}", func_name);
            let val = state.new_bv_with_name(sym_name.into(), total_bits)?;
            Ok(ReturnValue::Return(val))
        }

        Type::ArrayType {
            element_type,
            num_elements,
        } => {
            let element_bits = state.size_in_bits(element_type).unwrap();
            let total_bits = element_bits * (*num_elements as u32);
            let sym_name = format!("arr_{}", func_name);
            let val = state.new_bv_with_name(sym_name.into(), total_bits)?;
            Ok(ReturnValue::Return(val))
        }

        Type::StructType { element_types, .. } => {
            let total_bits: u32 = element_types
                .iter()
                .map(|e| state.size_in_bits(e).unwrap())
                .sum();
            let sym_name = format!("struct_{}", func_name);
            let val = state.new_bv_with_name(sym_name.into(), total_bits)?;
            Ok(ReturnValue::Return(val))
        }

        Type::FPType(fptype) => {
            let bits = State::<DefaultBackend>::fp_size_in_bits(*fptype);
            let sym_name = format!("fp_{}", func_name);
            let val = state.new_bv_with_name(sym_name.into(), bits)?;
            Ok(ReturnValue::Return(val))
        }

        Type::NamedStructType { .. } => {
            todo!()
        }

        Type::X86_MMXType => {
            todo!();
        }

        Type::X86_AMXType => {
            todo!();
        }

        Type::MetadataType => Err(Error::OtherError("Cannot return metadata type".into())),

        Type::LabelType => Err(Error::OtherError("Cannot return label type".into())),

        Type::TokenType => Err(Error::OtherError("Cannot return token type".into())),
    };
    ret
}

// TODO: make generic for any type (currently hardcoded to int)
/// HOOKED_ON: rlbox::tainted_volatile<int, rlbox::rlbox_test_sandbox>::operator=<int>
fn rlbox_assign_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let call_args = get_args_exact(call, 2)?;
    let target_bv = get_operand(state, call_args[0])?;
    let value_bv = get_operand(state, call_args[1])?;
    let actual_value = state.read(&value_bv, 32)?;
    state.write(&target_bv, actual_value)?;
    Ok(ReturnValue::Return(target_bv))
}

// TODO: make generic for any array size, any array type (currently hardcoded to int[4])
/// HOOKED_ON: rlbox::tainted_base_impl<rlbox::tainted_volatile, int [4], rlbox::rlbox_test_sandbox>::operator[]<int>
fn sandboxed_index_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let call_args = get_args_exact(call, 2)?;

    let index_bv = get_operand(state, call_args[1])?;

    // Read the integer value from the pointer (32 bits for i32)
    let index_value_bv = state.read(&index_bv, 32)?;

    let index_value = index_value_bv.as_u64().expect("OOPPPSSSS") as i64;

    // Bounds check: hardcoding for array size of 4 (int[4])
    const ARRAY_SIZE: i64 = 4;
    if !(0..ARRAY_SIZE).contains(&index_value) {
        return Err(Error::OtherError(format!(
            "Array index {} out of bounds [0, {})",
            index_value, ARRAY_SIZE
        )));
    }

    // If bounds check passes, perform the array access manually
    let array_base_bv = get_operand(state, call_args[0])?;

    const ELEMENT_SIZE: u32 = 4;
    let offset = index_value * ELEMENT_SIZE as i64;
    let offset_bv = state.bv_from_i64(offset, array_base_bv.get_width());
    let element_addr_bv = array_base_bv.add(&offset_bv);

    Ok(ReturnValue::Return(element_addr_bv))
}

// TODO: make generic for any array size, any array type, any index type (currently hardcoded to int, 4, unsigned long)
/// HOOKED_ON: std::__1::array<int, (unsigned long)4>::operator[][abi:un170006]
fn std_array_index_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let call_args = get_args_exact(call, 2)?;

    // Get the index value from the second argument
    let index_bv = get_operand(state, call_args[1])?;
    log::info!("INDEX_VALUE_BV: {index_bv:?}");
    let index_value = index_bv.as_u64().expect("OOPPPSSSS") as i64;

    // Bounds check: array size is 4
    const ARRAY_SIZE: i64 = 4;
    if !(0..ARRAY_SIZE).contains(&index_value) {
        return Err(Error::OtherError(format!(
            "std::array index {} out of bounds [0, {})",
            index_value, ARRAY_SIZE
        )));
    }

    // Get the array base address (first argument)
    let array_base_bv = get_operand(state, call_args[0])?;

    // Calculate the address of the indexed element
    const ELEMENT_SIZE: u32 = 4; // bytes per int
    let index_as_bv = state.bv_from_u32(index_value as u32, array_base_bv.get_width());
    let offset_bv = index_as_bv.mul(&state.bv_from_u32(ELEMENT_SIZE, array_base_bv.get_width()));
    let element_addr_bv = array_base_bv.add(&offset_bv);

    // Return the ADDRESS of the element (reference)
    Ok(ReturnValue::Return(element_addr_bv))
}

// TODO: make generic for any pointer type (currently hardcoded to int (*) [4])
/// HOOKED_ON: rlbox::tainted_base_impl<rlbox::tainted, int (*) [4], rlbox::rlbox_test_sandbox>::operator*
fn rlbox_deref_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let call_args = get_args_exact(call, 1)?;
    // Get the tainted pointer object (this)
    let tainted_ptr_bv = get_operand(state, call_args[0])?;
    // Read the actual array pointer from the tainted pointer object
    let array_ptr_bv = state.read(&tainted_ptr_bv, state.proj.pointer_size_bits())?;

    // Return the array pointer (this is what (*sandbox_array) should return)
    Ok(ReturnValue::Return(array_ptr_bv))
}

// TODO: make generic for any array size, any return type (currently hardcoded to int[4])
/// HOOKED_ON: rlbox::rlbox_sandbox<rlbox::rlbox_test_sandbox>::malloc_in_sandbox<int [4]>
fn malloc_in_sandbox_hook(state: &mut State<DefaultBackend>, _call: &dyn IsCall) -> HookResult {
    // Allocate concrete memory for a 4-element int array
    let array_size_bits = 4 * 32_u64; // 4 integers * 32 bits each
    let concrete_array_ptr = state.allocate(array_size_bits);

    Ok(ReturnValue::Return(concrete_array_ptr))
}

// TODO: make generic for any return type (currently hardcoded to int)
// TODO: figure out how to process the lambda?
/// HOOKED_ON: rlbox::tainted_base_impl<rlbox::tainted_volatile, int, rlbox::rlbox_test_sandbox>::copy_and_verify<sandbox_array_index_checked()::$_0>
fn copy_and_verify_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let args = get_args_exact(call, 1)?;
    let tainted_bv = get_operand(state, args[0])?;
    let value_bv = state.read(&tainted_bv, 32)?;

    // TODO: WHERE TF IS THE LAMBDA????

    Ok(ReturnValue::Return(value_bv))
}

pub fn add_hooks(config: &mut Config<DefaultBackend>) {
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
    // hook for copy and verify
    config.function_hooks.add_cpp_demangled(
        "rlbox::tainted_base_impl<rlbox::tainted_volatile, int, rlbox::rlbox_test_sandbox>::copy_and_verify<sandbox_array_index_checked()::$_0>",
        &copy_and_verify_hook
    );
}

