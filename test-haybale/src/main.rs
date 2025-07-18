use haybale::Project;
mod exec;
mod hooks;
mod types;
use clap::Parser;
use exec::symex_and_check;

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
    let (func, module) = project.get_func_by_name(&args.function).unwrap();
    println!(
        "Analyzing function {:?} from module {:?}",
        func.name, module.name
    );
    println!(
        "Function signature: {:?} -> {:?}",
        func.parameters, func.return_type
    );
    for block in &func.basic_blocks {
        println!("Basic block {}", block.name);
        for instr in &block.instrs {
            println!("--- Instruction: {}", instr);
        }
        println!("\n");
    }

    let trace = symex_and_check(&args.function, &project, loop_bound);
    println!("trace: {:?}", trace);
    // if trace.len() == 1 {
    //     println!("We found 1 possible path");
    //     println!("Path: {:?}", trace[0].0);
    // } else {
    //     println!("We found {} possible paths", trace.len());
    //     for (i, path) in trace.iter().enumerate() {
    //         println!("Path {}: {:?}", i + 1, path.0);
    //     }
    // }
}
