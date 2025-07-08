use haybale::Project;
mod exec;
mod hooks;
mod types;
use clap::Parser;
use exec::symex_func_with_loop_bound;

/// Command-line arguments
#[derive(Parser, Debug)]
#[command(author, version, about, long_about = None)]
struct Args {
    /// Path to the LLVM bitcode file (binary)
    binary: String,
    /// Name of the function to symbolically execute
    function: String,
}

fn main() {
    env_logger::init();
    let args = Args::parse();
    let loop_bound = 1000;

    let project = Project::from_bc_path(&args.binary).unwrap();
    symex_func_with_loop_bound(&args.function, &project, loop_bound);
}
