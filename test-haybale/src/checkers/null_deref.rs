use super::{CheckErr, CheckResult, ExecutionTrace};
use haybale::Error;

pub fn check_null_deref(trace: &ExecutionTrace<'_>) -> CheckResult {
    let (result, _state) = trace;
    if let Err(Error::NullPointerDereference) = result {
        return Err(CheckErr::DereferencedNull);
    }
    Ok(())
}
