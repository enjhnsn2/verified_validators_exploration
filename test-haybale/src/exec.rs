use crate::checkers::{CheckResult, ExecutionTrace, check_trace};
use crate::hooks::add_hooks;
use haybale::{Config, Project, backend::DefaultBackend, symex_function};
// TODO: get source names for reporting bugs.
//  Example code that should help
// let source_locs = path_entry.get_all_source_locs().collect::<Vec<_>>();
// println!("source_locs: {:?}", source_locs);

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

pub fn symex_and_check(func_name: &str, project: &Project, loop_bound: usize) -> Vec<CheckResult> {
    let traces = symex_func_with_loop_bound(func_name, project, loop_bound);
    traces.iter().map(|trace| check_trace(trace)).collect()
}
