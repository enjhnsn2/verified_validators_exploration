use crate::hooks::add_hooks;
use haybale::{
    Config, Error, Project, ReturnValue, State, backend::DefaultBackend, symex_function,
};

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

pub fn check_trace<'a>(trace: &ExecutionTrace<'a>) -> CheckResult {
    // TODO: implement actual checking logic
    check_null_deref(trace)?;
    Ok(())
}

// Haybale just catches this, so its a trivial checker
pub fn check_null_deref<'a>(trace: &ExecutionTrace<'a>) -> CheckResult {
    let (result, _state) = trace;
    if result.is_err() {
        return Err(CheckErr::DereferencedNull);
    }
    Ok(())
}

pub fn symex_and_check<'a>(
    func_name: &str,
    project: &'a Project,
    loop_bound: usize,
) -> Vec<CheckResult> {
    let traces = symex_func_with_loop_bound(func_name, project, loop_bound);
    traces.iter().map(|trace| check_trace(trace)).collect()
}
