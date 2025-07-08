use haybale::Project;
use std::path::Path;

use test_haybale::exec::symex_func_with_loop_bound;

use std::sync::Once;

static INIT: Once = Once::new();

/// Setup function that is only run once, even if called multiple times.
fn setup_logger() {
    INIT.call_once(|| {
        env_logger::init();
    });
}

#[test]
fn test_sandbox_array_index_unchecked_unsafe() {
    setup_logger();
    let binary_path = Path::new("../examples/host.bc");
    let project = Project::from_bc_path(binary_path).unwrap();
    let loop_bound = 1000;

    symex_func_with_loop_bound("sandbox_array_index_unchecked_unsafe", &project, loop_bound);
}

#[test]
fn test_sandbox_array_index_unchecked_safe() {
    setup_logger();
    let binary_path = Path::new("../examples/host.bc");
    let project = Project::from_bc_path(binary_path).unwrap();
    let loop_bound = 1000;

    symex_func_with_loop_bound("sandbox_array_index_unchecked_safe", &project, loop_bound);
}

#[test]
fn test_sandbox_array_index_checked() {
    setup_logger();
    let binary_path = Path::new("../examples/host.bc");
    let project = Project::from_bc_path(binary_path).unwrap();
    let loop_bound = 1000;

    symex_func_with_loop_bound("sandbox_array_index_checked", &project, loop_bound);
}
