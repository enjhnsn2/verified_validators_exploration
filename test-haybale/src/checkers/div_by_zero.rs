use super::{CheckErr, CheckResult, ExecutionTrace};
use haybale::State;
use llvm_ir::Instruction;
use llvm_ir::instruction::BinaryOp;

pub fn check_div_by_zero(trace: &ExecutionTrace<'_>) -> CheckResult {
    let (_result, state) = trace;
    for path_entry in state.get_path().iter() {
        let bb = path_entry.0.bb;
        for instr in &bb.instrs {
            check_div_by_zero_instr(state, instr)?;
        }
    }
    Ok(())
}

fn check_div_by_zero_instr(
    state: &State<'_, haybale::backend::DefaultBackend>,
    instr: &llvm_ir::Instruction,
) -> CheckResult {
    match instr {
        Instruction::UDiv(i) => {
            can_be_zero(state, i.get_operand1())?;
        }
        Instruction::SDiv(i) => {
            can_be_zero(state, i.get_operand1())?;
        }
        Instruction::URem(i) => {
            can_be_zero(state, i.get_operand1())?;
        }
        Instruction::SRem(i) => {
            can_be_zero(state, i.get_operand1())?;
        }
        _ => {}
    }
    Ok(())
}

fn can_be_zero(
    state: &State<'_, haybale::backend::DefaultBackend>,
    operand: &llvm_ir::Operand,
) -> CheckResult {
    let bv = state.operand_to_bv(operand).unwrap();
    let zero = state.zero(bv.get_width());
    // We will assert that value is zero, and check if state is sat
    bv._eq(&zero).assert();
    if state.sat().unwrap() {
        return Err(CheckErr::DividedByZero);
    }
    Ok(())
}
