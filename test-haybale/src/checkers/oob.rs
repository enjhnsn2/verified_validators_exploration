use super::{CheckResult, ExecutionTrace};
use haybale::State;
use haybale::backend::DefaultBackend;
use llvm_ir::Instruction;
use llvm_ir::Type;
use llvm_ir::TypeRef;
use llvm_ir::operand::Operand;

pub fn check_oob(trace: &ExecutionTrace<'_>) -> CheckResult {
    let (_result, state) = trace;
    for path_entry in state.get_path().iter() {
        let bb = path_entry.0.bb;
        for instr in &bb.instrs {
            check_oob_instr(state, instr)?;
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
fn check_oob_instr(state: &State<'_, DefaultBackend>, instr: &llvm_ir::Instruction) -> CheckResult {
    if let Instruction::GetElementPtr(i) = instr {
        let addr = &i.address;
        let indices = &i.indices;
        if let Operand::LocalOperand { name: _, ty } = addr {
            // we only enforce if in_bounds is true, because if its not present, than anything goes
            if i.in_bounds {
                check_gep_inbounds(state, ty, indices);
            }
        } else {
            panic!("check_oob_instr: addr is not a local operand: {addr}");
        }
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

fn check_gep_inbounds_array(
    _state: &State<'_, DefaultBackend>,
    _indices: &[Operand],
    element_type: &Type,
    num_elements: usize,
) {
    println!(">>> element_type: {:?}", element_type);
    println!(">>> num_elements: {:?}", num_elements);
    assert!(num_elements > 0);

    // Only handles indices of the form [0, x] for now
    // assert!(indices.len() == 2);
    // let index_0 = &indices[0];
    // let index_1 = &indices[1];
    // if let Operand::ConstantOperand { value: Constant::Int(value) } = index_0 {
    //     assert!(value == 0);
    // } else {
    //     panic!("check_gep_inbounds_array: index_0 is not a constant: {index_0}");
    // }

    unimplemented!()
}

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
