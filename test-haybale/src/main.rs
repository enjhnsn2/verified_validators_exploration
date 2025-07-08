use haybale::{Config, Project, backend::DefaultBackend, symex_function};
mod hooks;
mod types;
use clap::Parser;
use hooks::add_hooks;

/// Command-line arguments
#[derive(Parser, Debug)]
#[command(author, version, about, long_about = None)]
struct Args {
    /// Path to the LLVM bitcode file (binary)
    binary: String,
    /// Name of the function to symbolically execute
    function: String,
}

fn symex_func_with_loop_bound(func_name: &str, project: &Project, loop_bound: usize) {
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
            } // em.state().full_error_message_with_context(e)),
        }
    }
}

fn main() {
    env_logger::init();
    let args = Args::parse();
    let loop_bound = 1000;

    let project = Project::from_bc_path(&args.binary).unwrap();
    symex_func_with_loop_bound(&args.function, &project, loop_bound);
}
