use crate::hooks::add_hooks;
use haybale::{
    Config, Error, Project, ReturnValue, State, backend::DefaultBackend, symex_function,
};

pub type PathResult = Result<ReturnValue<<DefaultBackend as haybale::backend::Backend>::BV>, Error>;
pub type ExecutionTrace<'a> = Vec<(PathResult, State<'a, DefaultBackend>)>;

pub fn symex_func_with_loop_bound<'a>(
    func_name: &str,
    project: &'a Project,
    loop_bound: usize,
) -> ExecutionTrace<'a> {
    let mut config: Config<DefaultBackend> = Config::default();
    add_hooks(&mut config);

    config.loop_bound = loop_bound;

    let mut em = symex_function(func_name, project, config, None).unwrap();
    let mut results: ExecutionTrace = Vec::new();
    while let Some(path) = em.next() {
        results.push((path.clone(), em.state().clone()));
    }
    results
}
