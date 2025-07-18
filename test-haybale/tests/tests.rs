use haybale::Project;
use std::path::Path;
use std::sync::Once;
use test_haybale::exec::symex_func_with_loop_bound;

// TODO: currently these tests just make sure that the symex doesn't crash
// We need to improve these tests so that they check that the symex has the correct final state
// e.g., that we return with the memory safety errors we expect (or if there are none, that the final state is safe)

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

    let results =
        symex_func_with_loop_bound("sandbox_array_index_unchecked_unsafe", &project, loop_bound);
    assert_eq!(results.len(), 1, "Expected exactly one result");
    assert!(
        results[0].0.is_err(),
        "Expected the result to be Err, got: {:?}",
        results[0].0
    );
}

#[test]
fn test_sandbox_array_index_unchecked_safe() {
    setup_logger();
    let binary_path = Path::new("../examples/host.bc");
    let project = Project::from_bc_path(binary_path).unwrap();
    let loop_bound = 1000;

    let results =
        symex_func_with_loop_bound("sandbox_array_index_unchecked_safe", &project, loop_bound);
    assert_eq!(results.len(), 1, "Expected exactly one result");
    assert!(
        results[0].0.is_ok(),
        "Expected the result to be Ok, got: {:?}",
        results[0].0
    );
}

#[test]
fn test_sandbox_array_index_checked() {
    setup_logger();
    let binary_path = Path::new("../examples/host.bc");
    let project = Project::from_bc_path(binary_path).unwrap();
    let loop_bound = 1000;

    let results = symex_func_with_loop_bound("sandbox_array_index_checked", &project, loop_bound);
    assert_eq!(results.len(), 1, "Expected exactly one result");
    assert!(
        results[0].0.is_ok(),
        "Expected the result to be Ok, got: {:?}",
        results[0].0
    );
}

#[test]
fn test_basic_oob_read() {
    setup_logger();
    let binary_path = Path::new("../examples/host.bc");
    let project = Project::from_bc_path(binary_path).unwrap();
    let loop_bound = 1000;

    let results = symex_func_with_loop_bound("basic_oob_read", &project, loop_bound);
    assert_eq!(results.len(), 1, "Expected exactly one result");
    assert!(
        results[0].0.is_err(),
        "Expected the result to be Err, got: {:?}",
        results[0].0
    );
}

#[test]
fn test_basic_oob_write() {
    setup_logger();
    let binary_path = Path::new("../examples/host.bc");
    let project = Project::from_bc_path(binary_path).unwrap();
    let loop_bound = 1000;

    let results = symex_func_with_loop_bound("basic_oob_write", &project, loop_bound);
    assert_eq!(results.len(), 1, "Expected exactly one result");
    assert!(
        results[0].0.is_err(),
        "Expected the result to be Err, got: {:?}",
        results[0].0
    );
}

#[test]
fn test_basic_null_read() {
    setup_logger();
    let binary_path = Path::new("../examples/host.bc");
    let project = Project::from_bc_path(binary_path).unwrap();
    let loop_bound = 1000;

    let results = symex_func_with_loop_bound("basic_null_read", &project, loop_bound);
    assert_eq!(results.len(), 1, "Expected exactly one result");
    assert!(
        results[0].0.is_err(),
        "Expected the result to be Err, got: {:?}",
        results[0].0
    );
}

#[test]
fn test_basic_null_write() {
    setup_logger();
    let binary_path = Path::new("../examples/host.bc");
    let project = Project::from_bc_path(binary_path).unwrap();
    let loop_bound = 1000;

    let results = symex_func_with_loop_bound("basic_null_write", &project, loop_bound);
    assert_eq!(results.len(), 1, "Expected exactly one result");
    assert!(
        results[0].0.is_err(),
        "Expected the result to be Err, got: {:?}",
        results[0].0
    );
}

#[test]
fn test_basic_div_by_zero() {
    setup_logger();
    let binary_path = Path::new("../examples/host.bc");
    let project = Project::from_bc_path(binary_path).unwrap();
    let loop_bound = 1000;

    let results = symex_func_with_loop_bound("basic_div_by_zero", &project, loop_bound);
    assert_eq!(results.len(), 1, "Expected exactly one result");
    assert!(
        results[0].0.is_err(),
        "Expected the result to be Err, got: {:?}",
        results[0].0
    );
}

#[test]
fn test_basic_div_by_zero2() {
    setup_logger();
    let binary_path = Path::new("../examples/host.bc");
    let project = Project::from_bc_path(binary_path).unwrap();
    let loop_bound = 1000;

    let results = symex_func_with_loop_bound("basic_div_by_zero2", &project, loop_bound);
    assert_eq!(results.len(), 1, "Expected exactly one result");
    assert!(
        results[0].0.is_err(),
        "Expected the result to be Err, got: {:?}",
        results[0].0
    );
}
