use haybale::Error;
use haybale::State;
use haybale::backend::Backend;
use haybale::backend::DefaultBackend;
use haybale::function_hooks::IsCall;
use llvm_ir::Type;
use llvm_ir::TypeRef;
use llvm_ir::types::NamedStructDef;

// TODO: in what scenario is addr_space not 0?
pub fn get_pointer_type(ty: &Type) -> TypeRef {
    match ty {
        Type::PointerType {
            pointee_type,
            addr_space,
        } => {
            assert!(*addr_space == 0);
            pointee_type.clone()
        }
        _ => panic!("get_pointer_type: not a pointer type: {ty}"),
    }
}

pub fn get_tainted_inner_type(
    state: &mut State<DefaultBackend>,
    tainted_bv: &llvm_ir::Operand,
) -> TypeRef {
    let tainted_ty = get_operand_type(state, tainted_bv);
    let tainted_inner_ty = get_pointer_type(&*tainted_ty);
    if let Type::NamedStructType { name, .. } = &*tainted_inner_ty {
        match state
            .proj
            .get_named_struct_def(&name)
            .ok()
            .unwrap()
            .0
            .clone()
        {
            NamedStructDef::Defined(def) => def.clone(),
            _ => panic!("get_tainted_inner_type: not a named struct type: {tainted_inner_ty}"),
        }
    } else {
        panic!("get_tainted_inner_type: not a named struct type: {tainted_inner_ty}")
    }
}

/// Get call arguments with exact count validation
pub fn get_args_exact(
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
pub fn get_operand(
    state: &mut State<DefaultBackend>,
    arg: &llvm_ir::Operand,
) -> Result<<DefaultBackend as Backend>::BV, Error> {
    state.operand_to_bv(arg)
}

pub fn get_operand_type(state: &mut State<DefaultBackend>, arg: &llvm_ir::Operand) -> TypeRef {
    state.type_of(arg)
}
