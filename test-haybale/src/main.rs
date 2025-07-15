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
    let results = symex_func_with_loop_bound(&args.function, &project, loop_bound);
    if results.len() == 1 {
        println!("We found 1 possible path");
        println!("Path: {:?}", results[0]);
    } else {
        println!("We found {} possible paths", results.len());
        for (i, result) in results.iter().enumerate() {
            println!("Path {}: {:?}", i + 1, result);
        }
    }
}
