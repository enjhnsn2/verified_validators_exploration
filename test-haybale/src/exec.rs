use crate::checkers::CheckResult;
use crate::checkers::ExecutionTrace;
use crate::checkers::check_trace;
use crate::checkers::div_by_zero::monitor_div_by_zero;
use crate::checkers::oob::monitor_oob;
use crate::hooks::add_hooks;
use crate::preprocess::preprocess_func;
use haybale::{Config, Project, backend::DefaultBackend, symex_function};
// TODO: get source names for reporting bugs.
//  Example code that should help
// let source_locs = path_entry.get_all_source_locs().collect::<Vec<_>>();
// println!("source_locs: {:?}", source_locs);

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
    // This should do something else?
    // if preprocess_func_and_check(&args.function, &project){
    //     println!("Preprocessing failed!");
    //     std::process::exit(0);
    // }
    // if preprocess_func_and_check(&args.function, &project){
    //     return vec![CheckResult::Err(Error::OtherError(POISON_ERROR.to_string()))]
    // }
    match preprocess_func(func_name, &project) {
        Ok(_) => (),
        Err(err) => return vec![Err(err)],
    }

    // if preprocess_func(&args.function, &project)

    let traces = symex_func_and_monitor(func_name, project, loop_bound);
    traces.iter().map(|trace| check_trace(trace)).collect()
}
