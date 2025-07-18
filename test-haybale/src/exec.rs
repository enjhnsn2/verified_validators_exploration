use crate::hooks::add_hooks;
use haybale::{
    Config, Error, Project, ReturnValue, State, backend::DefaultBackend, symex_function,
};
use llvm_ir::Instruction;
use llvm_ir::instruction::BinaryOp;
// TODO: get source names for reporting bugs.
//  Example code that should help
// let source_locs = path_entry.get_all_source_locs().collect::<Vec<_>>();
// println!("source_locs: {:?}", source_locs);

pub type PathResult = Result<ReturnValue<<DefaultBackend as haybale::backend::Backend>::BV>, Error>;
pub type ExecutionTrace<'a> = (PathResult, State<'a, DefaultBackend>);

#[derive(Debug, Clone, PartialEq, Eq)]
pub enum CheckErr {
    DereferencedNull,
    DividedByZero,
}

pub type CheckResult = Result<(), CheckErr>;

pub fn symex_func_with_loop_bound<'a>(
    func_name: &str,
    project: &'a Project,
    loop_bound: usize,
) -> Vec<ExecutionTrace<'a>> {
    let mut config: Config<DefaultBackend> = Config::default();
    add_hooks(&mut config);

    config.loop_bound = loop_bound;

    let mut em = symex_function(func_name, project, config, None).unwrap();
    let mut results: Vec<ExecutionTrace> = Vec::new();
    while let Some(path) = em.next() {
        results.push((path.clone(), em.state().clone()));
    }
    results
}

pub fn check_trace(trace: &ExecutionTrace<'_>) -> CheckResult {
    // TODO: add more checkers
    check_null_deref(trace)?;
    check_div_by_zero(trace)?;
    Ok(())
}

// Haybale just catches this, so its a trivial checker
pub fn check_null_deref(trace: &ExecutionTrace<'_>) -> CheckResult {
    let (result, _state) = trace;
    if result.is_err() {
        return Err(CheckErr::DereferencedNull);
    }
    Ok(())
}

pub fn check_div_by_zero(trace: &ExecutionTrace<'_>) -> CheckResult {
    let (_result, state) = trace;
    for path_entry in state.get_path().iter() {
        println!("path_entry: {:?}", path_entry);
        let bb = path_entry.0.bb;
        for instr in &bb.instrs {
            check_div_by_zero_instr(state, instr)?;
        }
    }
    Ok(())
}

// Udiv, Sdiv, URem, Srem
pub fn check_div_by_zero_instr(
    state: &State<'_, DefaultBackend>,
    instr: &llvm_ir::Instruction,
) -> CheckResult {
    println!("--- {:?}", instr);
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

        _ => {}
    }

    Ok(())
}

fn can_be_zero(state: &State<'_, DefaultBackend>, operand: &llvm_ir::Operand) -> CheckResult {
    let bvrhs = state.operand_to_bv(operand).unwrap();
    let zero = state.zero(bvrhs.get_width());
    // We will assert that rhs is zero, and check if it is sat
    bvrhs._eq(&zero).assert();
    // TODO: how to unassert this? State is immutable?
    if state.sat().unwrap() {
        return Err(CheckErr::DividedByZero);
    }
    Ok(())
}

pub fn symex_and_check(func_name: &str, project: &Project, loop_bound: usize) -> Vec<CheckResult> {
    let traces = symex_func_with_loop_bound(func_name, project, loop_bound);
    traces.iter().map(|trace| check_trace(trace)).collect()
}
