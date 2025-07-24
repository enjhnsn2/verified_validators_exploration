use super::CheckResult;
use crate::checkers::ExecutionTrace;
use haybale::Error;

// Haybale already reports null pointer dereferences, so we just check for that
pub fn check_null_deref(trace: &ExecutionTrace<'_>) -> CheckResult {
    let (result, _state) = trace;
    if let Err(Error::NullPointerDereference) = result {
        return Err(Error::OtherError("CheckErr::DereferencedNull".to_string()));
    }
    Ok(())
}
