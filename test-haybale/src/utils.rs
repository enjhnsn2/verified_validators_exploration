use either::Either;
use haybale::Error;
use haybale::State;
use haybale::backend::Backend;
use haybale::backend::DefaultBackend;
use haybale::function_hooks::IsCall;
use llvm_ir::Type;
use llvm_ir::TypeRef;
use llvm_ir::{Constant, Name, Operand};

// In what scenario is addr_space not 0?
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

/// Extract the function name from a dyn IsCall
pub fn get_function_name(call: &dyn IsCall) -> Option<&str> {
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
