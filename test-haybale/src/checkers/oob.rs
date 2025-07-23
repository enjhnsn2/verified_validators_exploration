use super::{CheckResult, ExecutionTrace};
use haybale::State;
use llvm_ir::Instruction;

pub fn check_array_oob(trace: &ExecutionTrace<'_>) -> CheckResult {
    let (_result, state) = trace;
    for path_entry in state.get_path().iter() {
        let bb = path_entry.0.bb;
        for instr in &bb.instrs {
            check_array_oob_instr(state, instr)?;
        }
    }
    Ok(())
}

fn check_array_oob_instr(
    state: &State<'_, haybale::backend::DefaultBackend>,
    instr: &llvm_ir::Instruction,
) -> CheckResult {
    match instr {
        Instruction::GetElementPtr(_i) => {
            unimplemented!()
        }
        _ => {}
    }
    Ok(())
}
