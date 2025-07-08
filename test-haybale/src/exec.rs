use crate::hooks::add_hooks;
use haybale::{Config, Project, backend::DefaultBackend, symex_function};

pub fn symex_func_with_loop_bound(func_name: &str, project: &Project, loop_bound: usize) {
    let mut config: Config<DefaultBackend> = Config::default();
    add_hooks(&mut config);

    config.loop_bound = loop_bound;

    let em = symex_function(func_name, project, config, None).unwrap();

    for path in em {
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
            }
        }
    }
}
