use haybale::{Config, Project, backend::DefaultBackend, symex_function};
mod hooks;
mod types;
use hooks::add_hooks;

fn symex_func_with_loop_bound(func_name: &str, project: &Project, loop_bound: usize) {
    let mut config: Config<DefaultBackend> = Config::default();
    add_hooks(&mut config);

    config.loop_bound = loop_bound;

    let mut em = symex_function(func_name, project, config, None).unwrap();

    while let Some(path) = em.next() {
        match path {
            Ok(p) => match p {
                haybale::ReturnValue::Return(r) => println!("Function returns {r:?}"),
                haybale::ReturnValue::ReturnVoid => println!("Returns void"),
                haybale::ReturnValue::Throw(e) => println!("Throws error {e:?}"),
                haybale::ReturnValue::Abort => println!("Aborts"),
            },
            Err(e) => {
                println!("{}", e);
                break;
            } // em.state().full_error_message_with_context(e)),
        }
    }
}

fn main() {
    env_logger::init();
    // Maps function calls to symbolic return values
    // hook for (*array[0] = ...)
    // try to add hook for precondition

    let project = Project::from_bc_path("../examples/host.bc").unwrap();
    symex_func_with_loop_bound("sandbox_array_index_checked", &project, 1000);
}
