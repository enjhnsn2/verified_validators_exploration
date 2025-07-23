use super::{CheckErr, CheckResult, ExecutionTrace};

pub fn check_null_deref(trace: &ExecutionTrace<'_>) -> CheckResult {
    let (result, _state) = trace;
    if result.is_err() {
        return Err(CheckErr::DereferencedNull);
    }
    Ok(())
}
