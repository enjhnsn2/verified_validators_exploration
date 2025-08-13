use crate::demangle::erase_templates;
use crate::utils::*;
use either::Either;
use haybale::backend::Backend;
use haybale::{Config, Error, ReturnValue, State, backend::DefaultBackend, function_hooks::IsCall};
use llvm_ir::TypeRef;
use llvm_ir::{Constant, Name, Operand};
use llvm_ir::{Instruction, Type};

// Type alias for cleaner function signatures
type HookResult = Result<ReturnValue<<DefaultBackend as Backend>::BV>, Error>;

/// Extract the function name from a dyn IsCall
fn get_function_name(call: &dyn IsCall) -> Option<&str> {
    match call.get_called_func() {
        Either::Right(Operand::ConstantOperand(cref)) => match cref.as_ref() {
            Constant::GlobalReference {
                name: Name::Name(name),
                ..
            } => Some(name),
            _ => None,
        },
        _ => None, // inline assembly
    }
}

fn get_function_return_type(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> TypeRef {
    let func_name = get_function_name(call).unwrap();
    let (func_def, _) = state.proj.get_func_by_name(func_name).unwrap();
    func_def.return_type.clone()
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

fn hook_dispatch(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let call_target_name = get_function_name(call).unwrap();
    let demangled_call_target_name = state.demangle(call_target_name);
    let true_func_name = erase_templates(&demangled_call_target_name);
    println!(
        "demangled_call_target_name: {:?}",
        demangled_call_target_name
    );
    println!("==> TRUE_FUNC_NAME: {:?}", true_func_name);
    match true_func_name.as_str() {
        "rlbox::tainted_base_impl::UNSAFE_unverified" => unsafe_unverified_hook(state, call),
        "rlbox::tainted_volatile::operator=" => rlbox_assign_hook(state, call),
        "rlbox::tainted_base_impl::operator[]" => rlbox_index_hook(state, call),
        "std::array::operator[]" => std_array_index_hook(state, call),
        "rlbox::tainted_base_impl::operator*" => rlbox_deref_hook(state, call),
        "rlbox::rlbox_sandbox::malloc_in_sandbox" => malloc_in_sandbox_hook(state, call),
        "rlbox::tainted_base_impl::copy_and_verify" => copy_and_verify_hook(state, call),
        _ => default_uc_hook(state, call),
    }
}

/// default hook for symbolizing return values for functions without explicit hooks
fn default_uc_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let func_type = state.type_of(call);
    let pointer_size = state.proj.pointer_size_bits();
    let func_name = &state.cur_loc.func.name;

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

// assignment where lhs is tainted.
// what are the two arguments here?
/// HOOKED_ON: rlbox::tainted_volatile::operator=
fn rlbox_assign_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let call_args = get_args_exact(call, 2)?;
    let value_bv = get_operand(state, call_args[1])?;

    Ok(ReturnValue::Return(value_bv)) // I think we just return rhs?
}

// returns a reference to the pointed-at element
// HOOKED_ON: rlbox::tainted_base_impl<rlbox::tainted_volatile, int [4], rlbox::rlbox_test_sandbox>::operator[]<int>
fn rlbox_index_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let call_args = get_args_exact(call, 2)?;

    let array_base_bv = get_operand(state, call_args[0])?;
    let index_bv = get_operand(state, call_args[1])?;
    let index_ty = get_operand_type(state, call_args[1]);

    let element_ty = get_pointer_type(&*index_ty);

    let size_in_bits = state.size_in_bits(&*element_ty).unwrap();
    assert!(size_in_bits % 8 == 0);
    let element_width = size_in_bits / 8;

    let width_bv = state.bv_from_u32(element_width, size_in_bits);
    let index_offset = array_base_bv.sub(&index_bv);

    let loaded_index_bv = state.read(&index_bv, size_in_bits)?;

    // TODO: add a bounds check?
    // TODO: overflow checks? should assert that offset is positive and less than array size

    let offset = width_bv.mul(&loaded_index_bv);
    let extended_offset = offset.uext(array_base_bv.get_width() - offset.get_width());
    let element_addr_bv = array_base_bv.add(&extended_offset);

    log::debug!(
        "rlbox::operator[]: {:?} + {:?} * {:?}",
        array_base_bv,
        width_bv,
        loaded_index_bv
    );

    Ok(ReturnValue::Return(element_addr_bv))
}

// TODO: copy more from other index
/// HOOKED_ON: std::__1::array<int, (unsigned long)4>::operator[][abi:un170006]
fn std_array_index_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let call_args = get_args_exact(call, 2)?;

    let array_base_bv = get_operand(state, call_args[0])?;
    let index_bv = get_operand(state, call_args[1])?;
    let index_ty = get_operand_type(state, call_args[1]);

    let element_ty = get_pointer_type(&*index_ty);

    let size_in_bits = state.size_in_bits(&*element_ty).unwrap();
    assert!(size_in_bits % 8 == 0);
    let element_width = size_in_bits / 8;
    let width_bv = state.bv_from_u32(size_in_bits, element_width);

    // TODO: add a bounds check
    let offset = width_bv.mul(&index_bv);
    let element_addr_bv = array_base_bv.add(&offset);

    Ok(ReturnValue::Return(element_addr_bv))
}

// TODO: make generic for any pointer type (currently hardcoded to int (*) [4])
/// HOOKED_ON: rlbox::tainted_base_impl<rlbox::tainted, int (*) [4], rlbox::rlbox_test_sandbox>::operator*
fn rlbox_deref_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let call_args = get_args_exact(call, 1)?;
    // Get the tainted pointer object (this)
    let tainted_ptr_bv = get_operand(state, call_args[0])?;
    let pointee_ty = get_pointer_type(&*get_operand_type(state, call_args[0]));
    let pointee_width = state.size_in_bits(&*pointee_ty).unwrap();
    let return_type = get_function_return_type(state, call);
    let return_width = state.size_in_bits(&*return_type).unwrap();
    // Read the actual array pointer from the tainted pointer object
    let array_ptr_bv = state.read(&tainted_ptr_bv, return_width)?;
    Ok(ReturnValue::Return(array_ptr_bv))
}

// TODO: make generic for any array size, any return type (currently hardcoded to int[4])
/// HOOKED_ON: rlbox::rlbox_sandbox<rlbox::rlbox_test_sandbox>::malloc_in_sandbox<int [4]>
fn malloc_in_sandbox_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let _call_args = get_args_exact(call, 1)?;
    let return_type = get_function_return_type(state, call);
    let get_pointer_type = get_pointer_type(&*return_type);
    let array_size_bits = state.size_in_bits(&*get_pointer_type).unwrap();
    let concrete_array_ptr = state.allocate(array_size_bits);
    Ok(ReturnValue::Return(concrete_array_ptr))
}

// TODO: make generic for any return type (currently hardcoded to int)
// TODO: figure out how to process the lambda?
/// HOOKED_ON: rlbox::tainted_base_impl<rlbox::tainted_volatile, int, rlbox::rlbox_test_sandbox>::copy_and_verify<sandbox_array_index_checked()::$_0>
fn copy_and_verify_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let args = get_args_exact(call, 1)?;
    println!("==> ARGS: {:?}", args[0]);
    let called_func = call.get_called_func();
    println!("==> CALLED_FUNC: {:#?}", called_func);

    // let tainted_bv = get_operand(state, args[0])?;
    // let value_bv = state.read(&tainted_bv, 32)?;
    // println!("==> ARGS: {:?}", args[0]);
    // TODO: WHERE TF IS THE LAMBDA????
    unimplemented!()

    // Ok(ReturnValue::Return(value_bv))
}

fn instruction_callback(
    instr: &Instruction,
    _exec_mgr: &haybale::ExecutionManager<DefaultBackend>,
) -> haybale::Result<()> {
    println!("insn: {}", instr);
    Ok(())
}

pub fn add_hooks(config: &mut Config<DefaultBackend>) {
    config
        .callbacks
        .add_instruction_callback(&instruction_callback);
    config.function_hooks.add_uc_hook(&hook_dispatch);
}
