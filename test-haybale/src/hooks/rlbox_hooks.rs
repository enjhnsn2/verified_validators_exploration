use crate::hooks::utils::*;
use crate::utils::*;
use haybale::{
    Config, ReturnValue, State,
    backend::DefaultBackend,
    function_hooks::{IsCall, generic_stub_hook},
};
// Wip
// TODO: make generic for any return type (currently hardcoded to int)
// TODO: figure out how to process the lambda?
// The issue here is that the lambda is not actually an argument, but has already been monomorphized out so that there is a monomorphic `copy_and_verify` that we call
// Solution: we should just not instrument copy_and_verify and let it do its own thing
fn copy_and_verify_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let args = get_args_exact(call, 1)?;
    println!("==> ARGS: {:?}", args[0]);
    let arg_ty = get_operand_type(state, args[0]);
    let unfolded_arg = get_pointer_type_and_unfold(&*arg_ty, state);
    println!("==> Unfolded ARG type: {:?}", unfolded_arg);
    let called_func = call.get_called_func();

    let (cav_name, _cav_ty) = unfold_function_reference(&called_func).unwrap();
    // need to strip off % at beginning
    let cav_name = cav_name.trim_start_matches('%');

    let (cav, _) = state.get_func_by_name(cav_name).unwrap();

    // get last instruction of cav
    let last_instr = cav.basic_blocks.last().unwrap().instrs.last().unwrap();
    println!("==> CAV last instruction: {:#?}", last_instr);
    if let llvm_ir::Instruction::Call(call) = last_instr {
        // let ret_ty = &call.get_return_type();
        let (lambda_name, lambda_ty) = unfold_function_reference(&call.get_called_func()).unwrap();
        println!("==> Lambda: {} {:?}", lambda_name, lambda_ty);
        let lambda_name = lambda_name.trim_start_matches('%');
        let (lambda, _) = state.get_func_by_name(lambda_name).unwrap();
        println!("==> Lambda: {:#?}", lambda);
        // solve for input?
    }

    // println!("global allocations: {:?}", state.proj.all_functions());
    // for (func,_) in state.proj.all_functions(){
    //     println!("{:?}", func.name);
    // }
    unimplemented!()

    // Ok(ReturnValue::Return(value_bv))
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

    let element_addr_bv = compute_index_addr(&array_base_bv, &loaded_index_bv, &width_bv);

    Ok(ReturnValue::Return(element_addr_bv))
}

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

fn malloc_in_sandbox_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let _call_args = get_args_exact(call, 1)?;
    let return_type = get_function_return_type(state, call);
    let get_pointer_type = get_pointer_type(&return_type);
    let array_size_bits = state.size_in_bits(&get_pointer_type).unwrap();
    let concrete_array_ptr = state.allocate(array_size_bits);
    Ok(ReturnValue::Return(concrete_array_ptr))
}

pub fn add_rlbox_hooks(config: &mut Config<DefaultBackend>) {
    config.function_hooks.add_cpp_notemplate(
        "rlbox::tainted_base_impl::UNSAFE_unverified",
        &generic_stub_hook,
    );
    config
        .function_hooks
        .add_cpp_notemplate("rlbox::tainted_volatile::operator=", &rlbox_assign_hook);
    config
        .function_hooks
        .add_cpp_notemplate("rlbox::tainted_base_impl::operator[]", &rlbox_index_hook);
    config
        .function_hooks
        .add_cpp_notemplate("rlbox::tainted_base_impl::operator*", &rlbox_deref_hook);
    config.function_hooks.add_cpp_notemplate(
        "rlbox::rlbox_sandbox::malloc_in_sandbox",
        &malloc_in_sandbox_hook,
    );
    config.function_hooks.add_cpp_notemplate(
        "rlbox::tainted_base_impl::copy_and_verify",
        &copy_and_verify_hook,
    );
    config
        .function_hooks
        .add_cpp_notemplate("rlbox::rlbox_sandbox::rlbox_sandbox", &generic_stub_hook);
    config
        .function_hooks
        .add_cpp_notemplate("rlbox::rlbox_sandbox::create_sandbox", &generic_stub_hook);
    config
        .function_hooks
        .add_cpp_notemplate("rlbox::rlbox_sandbox::destroy_sandbox", &generic_stub_hook);
    config
        .function_hooks
        .add_cpp_notemplate("rlbox::rlbox_sandbox::~rlbox_sandbox", &generic_stub_hook);
}
