use super::CheckResult;
use crate::checkers::ExecutionTrace;
use haybale::Error;
use haybale::ExecutionManager;
use haybale::State;
use haybale::backend::DefaultBackend;
use llvm_ir::Instruction;
use llvm_ir::instruction::BinaryOp;

const DIV_BY_ZERO_ERROR: &str = "CheckErr::DividedByZero";

// Currently just checks whether the monitor reported an error
pub fn check_div_by_zero(trace: &ExecutionTrace<'_>) -> CheckResult {
    let (result, _state) = trace;
    if let Err(Error::OtherError(error)) = result {
        if error == DIV_BY_ZERO_ERROR {
            return Err(Error::OtherError(DIV_BY_ZERO_ERROR.to_string()));
        }
    }
    Ok(())
}

pub fn monitor_div_by_zero(
    instr: &llvm_ir::Instruction,
    em: &ExecutionManager<'_, DefaultBackend>,
) -> CheckResult {
    match instr {
        Instruction::UDiv(i) => {
            can_be_zero(em.state(), i.get_operand1())?;
        }
        Instruction::SDiv(i) => {
            can_be_zero(em.state(), i.get_operand1())?;
        }
        Instruction::URem(i) => {
            can_be_zero(em.state(), i.get_operand1())?;
        }
        Instruction::SRem(i) => {
            can_be_zero(em.state(), i.get_operand1())?;
        }
        _ => {}
    }
    Ok(())
}

fn can_be_zero(state: &State<'_, DefaultBackend>, operand: &llvm_ir::Operand) -> CheckResult {
    let bv = state.operand_to_bv(operand).unwrap();
    let zero = state.zero(bv.get_width());
    // We will assert that value is zero, and check if state is sat
    bv._eq(&zero).assert();
    if state.sat().unwrap() {
        return Err(Error::OtherError(DIV_BY_ZERO_ERROR.to_string()));
    }
    Ok(())
}
