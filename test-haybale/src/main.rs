use haybale::Project;
use haybale::config::Demangling;
mod checkers;
mod exec;
mod hooks;
mod utils;
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
    let (func, module) = project.get_func_by_name(&args.function).unwrap_or_else(|| {
        eprintln!(
            "Error: Function '{}' not found in the binary '{}'",
            args.function, args.binary
        );
        std::process::exit(1);
    });

    // Detect demangling strategy and demangle the function name
    let demangling = Demangling::autodetect(&project);
    let demangled_func_name = demangling.maybe_demangle(&func.name);

    println!(
        "Analyzing function {:?} from module {:?}",
        demangled_func_name, module.name
    );
    log::info!(
        "Function signature: {:?} -> {:?}",
        func.parameters,
        func.return_type
    );
    for block in &func.basic_blocks {
        log::info!("Basic block {}", block.name);
        for instr in &block.instrs {
            log::info!("--- Instruction: {}", instr);
        }
        log::info!("\n");
    }

    let trace = symex_and_check(&args.function, &project, loop_bound);
    println!("trace: {:?}", trace);
    // if trace.len() == 1 {
    //     log::info!("We found 1 possible path");
    //     log::info!("Path: {:?}", trace[0].0);
    // } else {
    //     log::info!("We found {} possible paths", trace.len());
    //     for (i, path) in trace.iter().enumerate() {
    //         log::info!("Path {}: {:?}", i + 1, path.0);
    //     }
    // }
}
