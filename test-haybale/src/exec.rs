use crate::hooks::add_hooks;
use haybale::{Config, Error, Project, ReturnValue, backend::DefaultBackend, symex_function};

pub fn symex_func_with_loop_bound(
    func_name: &str,
    project: &Project,
    loop_bound: usize,
) -> Vec<Result<ReturnValue<<DefaultBackend as haybale::backend::Backend>::BV>, Error>> {
    let mut config: Config<DefaultBackend> = Config::default();
    add_hooks(&mut config);

    config.loop_bound = loop_bound;

    let em = symex_function(func_name, project, config, None).unwrap();

    let mut results = Vec::new();
    for path in em {
        results.push(path);
    }
    results
}
