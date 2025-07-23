use haybale::Project;
use std::path::Path;
use std::sync::Once;
use test_haybale::exec::symex_and_check;

// TODO: currently these tests just make sure that negative tests get an error, and positive tests get an ok
// we should probably check that they're actually getting the right errors

static INIT: Once = Once::new();

/// Setup function that is only run once, even if called multiple times.
fn setup_logger() {
    INIT.call_once(|| {
        env_logger::init();
    });
}

/// Helper to run symex_and_check and assert the result is as expected
fn run_and_assert_err(func_name: &str, expect_err: bool) {
    setup_logger();
    let binary_path = Path::new("../examples/host.bc");
    let project = Project::from_bc_path(binary_path).unwrap();
    let loop_bound = 1000;
    let results = symex_and_check(func_name, &project, loop_bound);
    //assert_eq!(results.len(), 1, "Expected exactly one result"); // TODO: need to expand to handle any number of paths
    for result in results {
        if expect_err {
            assert!(result.is_err(), "Expected Err, got: {:?}", result);
        } else {
            assert!(result.is_ok(), "Expected Ok, got: {:?}", result);
        }
    }
}

#[test]
fn test_sandbox_array_index_unchecked_unsafe() {
    run_and_assert_err("sandbox_array_index_unchecked_unsafe", true);
}

#[test]
fn test_sandbox_array_index_unchecked_safe() {
    run_and_assert_err("sandbox_array_index_unchecked_safe", false);
}

#[test]
fn test_sandbox_array_index_checked() {
    run_and_assert_err("sandbox_array_index_checked", false);
}

#[test]
fn test_basic_oob_read() {
    run_and_assert_err("basic_oob_read", true);
}

#[test]
fn test_basic_oob_write() {
    run_and_assert_err("basic_oob_write", true);
}

#[test]
fn test_basic_null_read() {
    run_and_assert_err("basic_null_read", true);
}

#[test]
fn test_basic_null_write() {
    run_and_assert_err("basic_null_write", true);
}

#[test]
fn test_basic_null_write2() {
    run_and_assert_err("basic_null_write2", true);
}

#[test]
fn test_basic_div_by_zero() {
    run_and_assert_err("basic_div_by_zero", true);
}

#[test]
fn test_basic_div_by_zero2() {
    run_and_assert_err("basic_div_by_zero2", true);
}

#[test]
fn test_basic_div_by_zero_guarded() {
    run_and_assert_err("basic_div_by_zero_guarded", false);
}
