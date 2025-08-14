use crate::utils::*;
use haybale::backend::Backend;
use haybale::function_hooks::generic_stub_hook;
use haybale::{Config, Error, ReturnValue, State, backend::DefaultBackend, function_hooks::IsCall};
use llvm_ir::TypeRef;

// Type alias for cleaner function signatures
type HookResult = Result<ReturnValue<<DefaultBackend as Backend>::BV>, Error>;

fn get_function_return_type(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> TypeRef {
    let func_name = get_function_name(call).unwrap();
    let (func_def, _) = state.proj.get_func_by_name(func_name).unwrap();
    func_def.return_type.clone()
}

// TODO: make generic for any type (currently hardcoded to int)
fn unsafe_unverified_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let call_args = get_args_exact(call, 1)?;
    let tainted_bv = get_operand(state, call_args[0])?;
    // Read the actual integer value from the tainted_volatile object
    let value_bv = state.read(&tainted_bv, 32)?;

    Ok(ReturnValue::Return(value_bv))
}

// assignment where lhs is tainted.
// what are the two arguments here?
fn rlbox_assign_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let call_args = get_args_exact(call, 2)?;
    let value_bv = get_operand(state, call_args[1])?;

    Ok(ReturnValue::Return(value_bv)) // I think we just return rhs?
}

// returns a reference to the pointed-at element
fn rlbox_index_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let call_args = get_args_exact(call, 2)?;

    let array_base_bv = get_operand(state, call_args[0])?;
    let index_bv = get_operand(state, call_args[1])?;
    let index_ty = get_operand_type(state, call_args[1]);

    let element_ty = get_pointer_type(&index_ty);

    let size_in_bits = state.size_in_bits(&element_ty).unwrap();
    assert!(size_in_bits % 8 == 0);
    let element_width = size_in_bits / 8;

    let width_bv = state.bv_from_u32(element_width, size_in_bits);

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

fn std_array_index_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let call_args = get_args_exact(call, 2)?;

    let array_base_bv = get_operand(state, call_args[0])?;
    let index_bv = get_operand(state, call_args[1])?;
    let index_ty = get_operand_type(state, call_args[1]);

    println!("==> INDEX_TY: {:?}", index_ty);
    let element_ty = get_pointer_type(&index_ty);

    let size_in_bits = state.size_in_bits(&element_ty).unwrap();
    assert!(size_in_bits % 8 == 0);
    let element_width = size_in_bits / 8;

    let width_bv = state.bv_from_u32(element_width, size_in_bits);

    let loaded_index_bv = state.read(&index_bv, size_in_bits)?;

    // TODO: add a bounds check?
    // TODO: overflow checks? should assert that offset is positive and less than array size

    let offset = width_bv.mul(&loaded_index_bv);
    let extended_offset = offset.uext(array_base_bv.get_width() - offset.get_width());
    let element_addr_bv = array_base_bv.add(&extended_offset);

    log::debug!(
        "std::array::operator[]: {:?} + {:?} * {:?}",
        array_base_bv,
        width_bv,
        loaded_index_bv
    );

    Ok(ReturnValue::Return(element_addr_bv))
}

/// HOOKED_ON: rlbox::tainted_base_impl<rlbox::tainted, int (*) [4], rlbox::rlbox_test_sandbox>::operator*
fn rlbox_deref_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let call_args = get_args_exact(call, 1)?;
    // Get the tainted pointer object (this)
    let tainted_ptr_bv = get_operand(state, call_args[0])?;
    let return_type = get_function_return_type(state, call);
    let return_width = state.size_in_bits(&return_type).unwrap();
    // Read the actual array pointer from the tainted pointer object
    let array_ptr_bv = state.read(&tainted_ptr_bv, return_width)?;
    Ok(ReturnValue::Return(array_ptr_bv))
}

/// HOOKED_ON: rlbox::rlbox_sandbox<rlbox::rlbox_test_sandbox>::malloc_in_sandbox<int [4]>
fn malloc_in_sandbox_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let _call_args = get_args_exact(call, 1)?;
    let return_type = get_function_return_type(state, call);
    let get_pointer_type = get_pointer_type(&return_type);
    let array_size_bits = state.size_in_bits(&get_pointer_type).unwrap();
    let concrete_array_ptr = state.allocate(array_size_bits);
    Ok(ReturnValue::Return(concrete_array_ptr))
}

// Wip
// TODO: make generic for any return type (currently hardcoded to int)
// TODO: figure out how to process the lambda?
// The issue here is that the lambda is not actually an argument, but has already been monomorphized out so that there is a monomorphic `copy_and_verify` that we call
// Solution: we should just not instrument copy_and_verify and let it do its own thing
// fn copy_and_verify_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
//     let args = get_args_exact(call, 1)?;
//     println!("==> ARGS: {:?}", args[0]);
//     let called_func = call.get_called_func();
//     println!("==> CALLED_FUNC: {:#?}", called_func);

//     // let tainted_bv = get_operand(state, args[0])?;
//     // let value_bv = state.read(&tainted_bv, 32)?;
//     // println!("==> ARGS: {:?}", args[0]);
//     unimplemented!()

//     // Ok(ReturnValue::Return(value_bv))
// }

// fn instruction_callback(
//     instr: &Instruction,
//     _exec_mgr: &haybale::ExecutionManager<DefaultBackend>,
// ) -> haybale::Result<()> {
//     println!("insn: {}", instr);
//     Ok(())
// }

pub fn add_hooks(config: &mut Config<DefaultBackend>) {
    // config
    //     .callbacks
    //     .add_instruction_callback(&instruction_callback);

    config.function_hooks.add_cpp_notemplate(
        "rlbox::tainted_base_impl::UNSAFE_unverified",
        &unsafe_unverified_hook,
    );
    config
        .function_hooks
        .add_cpp_notemplate("rlbox::tainted_volatile::operator=", &rlbox_assign_hook);
    config
        .function_hooks
        .add_cpp_notemplate("rlbox::tainted_base_impl::operator[]", &rlbox_index_hook);
    config
        .function_hooks
        .add_cpp_notemplate("std::array::operator[]", &std_array_index_hook);
    config
        .function_hooks
        .add_cpp_notemplate("rlbox::tainted_base_impl::operator*", &rlbox_deref_hook);
    config.function_hooks.add_cpp_notemplate(
        "rlbox::rlbox_sandbox::malloc_in_sandbox",
        &malloc_in_sandbox_hook,
    );

    config.function_hooks.add_cpp_notemplate(
        "rlbox::tainted_base_impl::copy_and_verify",
        &generic_stub_hook,
    );

    config
        .function_hooks
        .add_cpp_notemplate("rlbox::rlbox_sandbox::rlbox_sandbox", &generic_stub_hook);

    config
        .function_hooks
        .add_cpp_notemplate("rlbox::rlbox_sandbox::create_sandbox", &generic_stub_hook);

    // config.function_hooks.add_uc_hook(&default_uc_hook);
}

// TODO: notemplate hooks -> generic hooks
