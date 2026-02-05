use crate::checkers::{
    CheckResult, ExecutionTrace, check_trace, div_by_zero::monitor_div_by_zero, oob::monitor_oob,
};
use crate::hooks::add_hooks;
use crate::preprocess::preprocess_func;
use haybale::{Config, Project, backend::DefaultBackend, symex_function};

pub fn symex_simple<'a>(func_name: &str, project: &'a Project) -> Vec<ExecutionTrace<'a>> {
    let mut config: Config<DefaultBackend> = Config::default();

    let mut em = symex_function(func_name, project, config, None).unwrap();
    println!("bv_params = {:?}", em.param_bvs());
    let mut results: Vec<ExecutionTrace> = Vec::new();
    while let Some(path) = em.next() {
        results.push((path.clone(), em.state().clone()));
    }
    results
}

pub fn symex_func_and_monitor<'a>(
    func_name: &str,
    project: &'a Project,
    loop_bound: usize,
) -> Vec<ExecutionTrace<'a>> {
    let mut config: Config<DefaultBackend> = Config::default();
    add_hooks(&mut config);

    config
        .callbacks
        .add_instruction_callback(monitor_div_by_zero);
    config.callbacks.add_instruction_callback(monitor_oob);

    config.loop_bound = loop_bound;

    let mut em = symex_function(func_name, project, config, None).unwrap();
    let mut results: Vec<ExecutionTrace> = Vec::new();
    while let Some(path) = em.next() {
        results.push((path.clone(), em.state().clone()));
    }
    results
}

pub fn symex_and_check(func_name: &str, project: &Project, loop_bound: usize) -> Vec<CheckResult> {
    match preprocess_func(func_name, &project) {
        Ok(_) => (),
        Err(err) => return vec![Err(err)],
    }

    let traces = symex_func_and_monitor(func_name, project, loop_bound);
    traces.iter().map(|trace| check_trace(trace)).collect()
}
