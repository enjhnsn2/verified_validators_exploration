use super::CheckResult;
// use crate::checkers::CheckErr;
use crate::checkers::ExecutionTrace;
use crate::utils::get_pointer_type;
use haybale::Error;
use haybale::ExecutionManager;
use haybale::backend::Backend;
use haybale::backend::DefaultBackend;
use llvm_ir::Instruction;
use llvm_ir::TypeRef;
use llvm_ir::instruction::GetElementPtr;

const OOB_ERROR: &str = "CheckErr::Oob";

// Currently just checks whether the monitor reported an error
pub fn check_oob(trace: &ExecutionTrace<'_>) -> CheckResult {
    let (result, _state) = trace;
    if let Err(Error::OtherError(error)) = result {
        if error == OOB_ERROR {
            return Err(Error::OtherError(OOB_ERROR.to_string()));
        }
    }
    Ok(())
}

// takes in ptr to aggregate and returns width of that aggregate
fn size_of_aggregate(
    ty: &TypeRef,
    em: &ExecutionManager<DefaultBackend>,
    width: u32,
) -> <DefaultBackend as Backend>::BV {
    let size_in_bits = em.state().size_in_bits(&get_pointer_type(ty)).unwrap();
    assert!(size_in_bits % 8 == 0);
    let size_in_bytes = size_in_bits / 8;

    em.state().bv_from_u32(size_in_bytes, width)
}

fn compute_gep_offset<'a>(
    ty: &TypeRef,
    em: &ExecutionManager<'a, DefaultBackend>,
    i: &'a GetElementPtr,
) -> <DefaultBackend as Backend>::BV {
    let bvbase = em.state().operand_to_bv(&i.address).unwrap();
    let offset = ExecutionManager::<DefaultBackend>::get_offset_recursive(
        em.state(),
        i.indices.iter(),
        ty,
        bvbase.get_width(),
    )
    .unwrap();
    offset
}

// Checks if GetElementPtr can be out of bounds
// https://releases.llvm.org/14.0.0/docs/LangRef.html#getelementptr-instruction
// https://releases.llvm.org/14.0.0/docs/GetElementPtr.html
pub fn monitor_oob<'a>(
    instr: &'a llvm_ir::Instruction,
    em: &ExecutionManager<'a, DefaultBackend>,
) -> CheckResult {
    if let Instruction::GetElementPtr(i) = instr {
        // we only enforce if in_bounds is true, because if its not present, than anything goes (by llvm's rules)
        if !i.in_bounds {
            return Ok(());
        }
        // get type of GEP aggregate
        let ty = em.state().type_of(&i.address);
        // compute rhs of gep as BV
        let offset = compute_gep_offset(&ty, em, i);
        // calculate size of GEP aggregate as BV
        let sz_bv = size_of_aggregate(&ty, em, offset.get_width());

        // check if its possible that offset >= size of aggregate
        offset.ugte(&sz_bv).assert();
        if em.state().sat().unwrap() {
            return Err(Error::OtherError(OOB_ERROR.to_string()));
        }
    }
    Ok(())
}
