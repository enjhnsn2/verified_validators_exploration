use crate::hooks::utils::*;
use crate::utils::*;
use haybale::{Config, Error, ReturnValue, State, backend::DefaultBackend, function_hooks::IsCall};

// Type alias for cleaner function signatures
// type HookResult = Result<ReturnValue<<DefaultBackend as Backend>::BV>, Error>;

fn unfold_std_array(
    state: &mut State<DefaultBackend>,
    array_ty: &llvm_ir::Type,
) -> (llvm_ir::TypeRef, usize) {
    // let ty: llvm_ir::TypeRef = get_pointer_type_and_unfold(array_ty, state);

    // Extract the type of the array
    let unfolded_ty = get_pointer_type_and_unfold(array_ty, state);

    // Ensure the type is a StructType
    if let llvm_ir::Type::StructType { element_types, .. } = &*unfolded_ty {
        // Extract the first element, which should be the array
        if let llvm_ir::Type::ArrayType {
            element_type,
            num_elements,
        } = &**element_types.get(0).unwrap()
        {
            // println!(
            //     "Element Type: {:?}, Number of Elements: {:?}",
            //     element_type, num_elements
            // );
            return (element_type.clone(), *num_elements);
        }
    }

    panic!("unfold_std_array: Expected StructType with ArrayType as first element");
}

fn std_array_index_hook(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> HookResult {
    let call_args = get_args_exact(call, 2)?;
    let array_base_bv = get_operand(state, call_args[0])?;
    let array_ty = get_operand_type(state, call_args[0]);
    let index_bv = get_operand(state, call_args[1])?;
    let (element_ty, num_elements) = unfold_std_array(state, &*array_ty);

    let size_in_bits = state.size_in_bits(&element_ty).unwrap();
    // println!("size in bits: {:?}", size_in_bits);
    assert!(size_in_bits % 8 == 0);
    let element_width = size_in_bits / 8;

    let width_bv = state.bv_from_u32(element_width, size_in_bits);

    let num_elements_bv = state.bv_from_u32(num_elements as u32, index_bv.get_width());

    if state
        .sat_with_extra_constraints(&[index_bv.ugte(&num_elements_bv)])
        .unwrap()
    {
        return Err(Error::OtherError("CheckErr::Oob".to_string()));
    }

    // base, index, element_width
    let element_addr_bv = compute_index_addr(&array_base_bv, &index_bv, &width_bv);

    Ok(ReturnValue::Return(element_addr_bv))
}

pub fn add_std_hooks(config: &mut Config<DefaultBackend>) {
    config
        .function_hooks
        .add_cpp_notemplate("std::array::operator[]", &std_array_index_hook);
}
