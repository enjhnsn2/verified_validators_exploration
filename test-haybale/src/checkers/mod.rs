pub mod div_by_zero;
pub mod null_deref;
pub mod oob;

use haybale::{Error, ReturnValue, State, backend::DefaultBackend};

pub type PathResult = Result<ReturnValue<<DefaultBackend as haybale::backend::Backend>::BV>, Error>;
pub type ExecutionTrace<'a> = (PathResult, State<'a, DefaultBackend>);

pub type CheckResult = Result<(), Error>;

pub fn check_trace(trace: &ExecutionTrace<'_>) -> CheckResult {
    null_deref::check_null_deref(trace)?;
    div_by_zero::check_div_by_zero(trace)?;
    oob::check_oob(trace)?;
    Ok(())
}
