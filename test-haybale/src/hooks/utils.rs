// Utility functions and types for hooks

use haybale::backend::{Backend, DefaultBackend};
use haybale::{Error, ReturnValue};

// Type alias for cleaner function signatures
pub type HookResult = Result<ReturnValue<<DefaultBackend as Backend>::BV>, Error>;

pub fn unfold_function_reference(
    called_func: &either::Either<llvm_ir::instruction::InlineAssembly, llvm_ir::Operand>,
) -> Option<(String, llvm_ir::TypeRef)> {
    match called_func.clone().right().unwrap() {
        llvm_ir::Operand::ConstantOperand(c) => match &*c {
            llvm_ir::Constant::GlobalReference { name, ty } => {
                return Some((name.to_string().clone(), ty.clone()));
            }
            _ => (),
        },
        _ => (),
    }
    None
}
