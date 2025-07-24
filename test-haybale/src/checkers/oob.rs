use super::CheckResult;
use crate::checkers::CheckErr;
use crate::checkers::ExecutionTrace;
use haybale::Error;
use haybale::ExecutionManager;
use haybale::State;
use haybale::backend::DefaultBackend;
use llvm_ir::Instruction;
use llvm_ir::Type;
use llvm_ir::TypeRef;
use llvm_ir::constant::Constant;
use llvm_ir::operand::Operand;

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

// https://releases.llvm.org/14.0.0/docs/LangRef.html#getelementptr-instruction
// https://releases.llvm.org/14.0.0/docs/GetElementPtr.html

// Indices are essentially a path
// calculating an out-of-bound access is legal in llvm except when `in_bounds` attribute is present

// >>> i: %3 = getelementptr inbounds [4 x i32]* %1, i64 0, i64 5 (with debugloc)
// >>> addr: [4 x i32]* %1 (%1 is the array, 4xi32 is the type used to perform address calculations)
// >>> indices:  i64 0, i64 5 , first value indexes the pointer, the second the type. First should always be 0?
// inbounds: true
pub fn monitor_oob<'a>(
    instr: &'a llvm_ir::Instruction,
    em: &ExecutionManager<'a, DefaultBackend>,
) -> CheckResult {
    if let Instruction::GetElementPtr(i) = instr {
        // let addr = &i.address;
        // let indices = &i.indices;
        let bvbase = em.state().operand_to_bv(&i.address).unwrap();
        let ty = em.state().type_of(&i.address);

        // let bvbase = self.state.operand_to_bv(&gep.address)?;
        let offset = ExecutionManager::<DefaultBackend>::get_offset_recursive(
            em.state(),
            i.indices.iter(),
            &ty,
            bvbase.get_width(),
        )
        .unwrap();

        let size_in_bits = em.state().size_in_bits(&*get_pointer_type(&*ty)).unwrap();
        assert!(size_in_bits % 8 == 0);
        let size_in_bytes = size_in_bits / 8;

        let sz_bv = em.state().bv_from_u32(size_in_bytes, offset.get_width());

        println!("|||||| {:?} {:?}", sz_bv, offset);

        offset.ugte(&sz_bv).assert();
        if em.state().sat().unwrap() {
            return Err(Error::OtherError(OOB_ERROR.to_string()));
        }
        // let offset = state.get_offset_recursive(indices.iter(), state.type_of(addr), bvbase.get_width()).unwrap();
        // println!("|||||| {:?} {:?}", bvbase, offset);
        // if let Operand::LocalOperand { name: _, ty } = addr {
        //     // we only enforce if in_bounds is true, because if its not present, than anything goes
        //     if i.in_bounds {
        //         check_gep_inbounds(state, ty, indices);
        //     }
        // } else {
        //     panic!("check_oob_instr: addr is not a local operand: {addr}");
        // }
    }
    Ok(())
}

// TODO: in what scenario is addr_space not 0?
fn get_pointer_type(ty: &Type) -> TypeRef {
    match ty {
        Type::PointerType {
            pointee_type,
            addr_space,
        } => {
            assert!(*addr_space == 0);
            pointee_type.clone()
        }
        _ => panic!("get_pointer_type: not a pointer type: {ty}"),
    }
}

fn check_gep_inbounds(state: &State<'_, DefaultBackend>, ty: &Type, indices: &[Operand]) {
    match &*get_pointer_type(ty) {
        Type::ArrayType {
            element_type,
            num_elements,
        } => {
            check_gep_inbounds_array(state, indices, element_type, *num_elements);
        }
        Type::StructType {
            element_types,
            is_packed,
        } => {
            check_gep_inbounds_struct(state, indices, element_types, *is_packed);
        }
        Type::NamedStructType { name } => {
            check_gep_inbounds_namedstruct(state, indices, name);
        }
        _ => panic!("Trying to calculate address of non-array or struct type: {ty}",),
    }
}

// fn calculate_array_offset(indices: &[Operand], element_type: &Type) -> usize {

// }

fn check_gep_inbounds_array(
    state: &State<'_, DefaultBackend>,
    indices: &[Operand],
    element_type: &Type,
    num_elements: usize,
) -> CheckResult {
    println!(">>> element_type: {:?}", element_type);
    println!(">>> num_elements: {:?}", num_elements);
    println!(">>> indices: {:?}", indices);
    assert!(num_elements > 0);

    // Only handles indices of the form [0, constant] for now
    // let bvbase = state.const_to_bv(&gep.address)?;
    // let offset = state.get_offset_recursive(indices, element_type);
    // println!(">>> offset: {:?}", offset);
    Ok(())
}

// TODO: use state::get_offset_recursive in haybale

fn check_gep_inbounds_struct(
    _state: &State<'_, DefaultBackend>,
    _indices: &[Operand],
    element_types: &[TypeRef],
    is_packed: bool,
) {
    println!(">>> element_types: {:?}", element_types);
    println!(">>> is_packed: {:?}", is_packed);
    unimplemented!()
}

fn check_gep_inbounds_namedstruct(
    _state: &State<'_, DefaultBackend>,
    _indices: &[Operand],
    name: &str,
) {
    println!(">>> name: {:?}", name);
    unimplemented!()
}
