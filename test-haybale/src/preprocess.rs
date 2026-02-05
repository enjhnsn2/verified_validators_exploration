use crate::checkers::CheckResult;
use crate::utils::{get_all_operands, get_terminator_operands, is_poison};
use haybale::{Error, Project};
use llvm_ir::{instruction::Instruction, terminator::Terminator};

const POISON_ERROR: &str = "CheckErr::Poison";

/// Simple preprocessing step to check for poison values in instructions and terminators
/// These poison values mess up the symex, and shouldn't be present in well-formed code
fn preprocess_instr(instr: &Instruction) -> CheckResult {
    let operands = get_all_operands(instr);
    for operand in operands.iter() {
        if is_poison(operand) {
            return CheckResult::Err(Error::OtherError(POISON_ERROR.to_string()));
        }
    }

    CheckResult::Ok(())
}

/// Check for poison values in terminators. See `preprocess_instr` for details.
fn preprocess_terminator(term: &Terminator) -> CheckResult {
    let operands = get_terminator_operands(term);
    for operand in operands.iter() {
        if is_poison(operand) {
            return CheckResult::Err(Error::OtherError(POISON_ERROR.to_string()));
        }
    }

    CheckResult::Ok(())
}

/// Preprocess a function by checking all its instructions and terminators for poison values
/// See `preprocess_instr` and `preprocess_terminator` for details.
pub fn preprocess_func(func_name: &str, project: &Project) -> CheckResult {
    let (func, _) = project
        .get_func_by_name(func_name)
        .unwrap_or_else(|| panic!("Failed to find function named {:?}", func_name));

    for block in func.basic_blocks.iter() {
        for instr in block.instrs.iter() {
            preprocess_instr(instr)?;
        }

        preprocess_terminator(&block.term)?;
    }

    CheckResult::Ok(())
}
