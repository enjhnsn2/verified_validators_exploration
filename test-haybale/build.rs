use std::process::Command;

fn main() {
    // Only run this when building tests
    println!("cargo:rerun-if-changed=../examples/Makefile");
    println!("cargo:rerun-if-changed=../examples/host.cpp");
    println!("cargo:rerun-if-changed=../examples/guest.c");
    println!("cargo:rerun-if-changed=../examples/guest.h");

    // Run make in the examples directory
    let output = Command::new("make").current_dir("../examples").output();

    match output {
        Ok(output) => {
            if !output.status.success() {
                eprintln!("Failed to build examples:");
                eprintln!("stdout: {}", String::from_utf8_lossy(&output.stdout));
                eprintln!("stderr: {}", String::from_utf8_lossy(&output.stderr));
                panic!("Make command failed with status: {}", output.status);
            }
            println!("Successfully built examples");
        }
        Err(e) => {
            panic!("Failed to execute make command: {}", e);
        }
    }
}
