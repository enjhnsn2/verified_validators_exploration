use crate::checkers::CheckResult;
use crate::utils::get_all_operands;
use crate::utils::get_terminator_operands;
use crate::utils::is_poison;
use haybale::Error;
use haybale::Project;
use llvm_ir::{instruction::Instruction, terminator::Terminator};

const POISON_ERROR: &str = "CheckErr::Poison";

fn preprocess_instr(instr: &Instruction) -> CheckResult {
    let operands = get_all_operands(instr);
    for operand in operands.iter() {
        if is_poison(operand) {
            return CheckResult::Err(Error::OtherError(POISON_ERROR.to_string()));
        }
    }

    CheckResult::Ok(())
}

fn preprocess_terminator(term: &Terminator) -> CheckResult {
    let operands = get_terminator_operands(term);
    for operand in operands.iter() {
        if is_poison(operand) {
            return CheckResult::Err(Error::OtherError(POISON_ERROR.to_string()));
        }
    }

    CheckResult::Ok(())
}

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

// pub fn preprocess_func_and_check(func_name: &str, project: &Project) -> bool {
//     match preprocess_func(func_name, project) {
//         CheckResult::Ok(_) => false,
//         CheckResult::Err(Error::OtherError(err)) if err == POISON_ERROR => true,
//         CheckResult::Err(err) => panic!("Unexpected error: {:?}", err),
//     }
// }
