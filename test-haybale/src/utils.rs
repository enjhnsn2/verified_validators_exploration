use either::Either;
use haybale::{
    Error, State,
    backend::{Backend, DefaultBackend},
    function_hooks::IsCall,
};
use llvm_ir::types::NamedStructDef;
use llvm_ir::{
    Constant, Name, Operand, Type, TypeRef, instruction::Instruction, terminator::Terminator,
};

// In what scenario is addr_space not 0?
/// Get the type a pointer is pointing to. e.g., for `i32*`, returns `i32`.
pub fn get_pointer_type(ty: &Type) -> TypeRef {
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

/// Retrieves the type of a pointer and unfolds it if it is a `NamedStructType`.
pub fn get_pointer_type_and_unfold(ty: &Type, state: &State<DefaultBackend>) -> TypeRef {
    let pointee_type = get_pointer_type(ty);
    if let Type::NamedStructType { ref name } = *pointee_type {
        return unfold_named_struct_def(name, state);
    }
    pointee_type
}

/// Get call arguments with exact count validation
pub fn get_args_exact(
    call: &dyn IsCall,
    expected_count: usize,
) -> Result<Vec<&llvm_ir::Operand>, Error> {
    let call_args = call.get_arguments();
    if call_args.len() != expected_count {
        return Err(Error::OtherError(format!(
            "Expected {} arguments, got {}",
            expected_count,
            call_args.len()
        )));
    }
    Ok(call_args.iter().map(|(operand, _)| operand).collect())
}

/// Convert a call argument to a bitvector
pub fn get_operand(
    state: &mut State<DefaultBackend>,
    arg: &llvm_ir::Operand,
) -> Result<<DefaultBackend as Backend>::BV, Error> {
    state.operand_to_bv(arg)
}

pub fn get_operand_type(state: &mut State<DefaultBackend>, arg: &llvm_ir::Operand) -> TypeRef {
    state.type_of(arg)
}

/// Extract the function name from a dyn IsCall
pub fn get_function_name(call: &dyn IsCall) -> Option<&str> {
    match call.get_called_func() {
        Either::Right(Operand::ConstantOperand(cref)) => match cref.as_ref() {
            Constant::GlobalReference {
                name: Name::Name(name),
                ..
            } => Some(name),
            _ => None,
        },
        _ => None, // inline assembly
    }
}

pub fn get_function_return_type(state: &mut State<DefaultBackend>, call: &dyn IsCall) -> TypeRef {
    let func_name = get_function_name(call).unwrap();
    let (func_def, _) = state.proj.get_func_by_name(func_name).unwrap();
    func_def.return_type.clone()
}

/// Helper function to compute the address of an array element.
///
/// This function takes:
/// - `base`: The base address of the array
/// - `index`: The index into the array
/// - `elem_width`: The width of each element in bytes
///
/// It returns the computed address by:
/// 1. Multiplying the index by the element width to get the offset
/// 2. Zero-extending the offset to match the base address width
/// 3. Adding the extended offset to the base address
pub fn compute_index_addr(
    base: &<DefaultBackend as Backend>::BV,
    index: &<DefaultBackend as Backend>::BV,
    elem_width: &<DefaultBackend as Backend>::BV,
) -> <DefaultBackend as Backend>::BV {
    let extended_width = elem_width.uext(index.get_width() - elem_width.get_width());
    let offset = extended_width.mul(index);
    let extended_offset = offset.uext(base.get_width() - offset.get_width());
    base.add(&extended_offset)
}

/// Extracts all operands from an LLVM IR instruction, covering all instruction types
pub fn get_all_operands(instr: &Instruction) -> Vec<&Operand> {
    match instr {
        Instruction::Add(add) => vec![&add.operand0, &add.operand1],
        Instruction::Sub(sub) => vec![&sub.operand0, &sub.operand1],
        Instruction::Mul(mul) => vec![&mul.operand0, &mul.operand1],
        Instruction::UDiv(udiv) => vec![&udiv.operand0, &udiv.operand1],
        Instruction::SDiv(sdiv) => vec![&sdiv.operand0, &sdiv.operand1],
        Instruction::URem(urem) => vec![&urem.operand0, &urem.operand1],
        Instruction::SRem(srem) => vec![&srem.operand0, &srem.operand1],
        Instruction::And(and) => vec![&and.operand0, &and.operand1],
        Instruction::Or(or) => vec![&or.operand0, &or.operand1],
        Instruction::Xor(xor) => vec![&xor.operand0, &xor.operand1],
        Instruction::Shl(shl) => vec![&shl.operand0, &shl.operand1],
        Instruction::LShr(lshr) => vec![&lshr.operand0, &lshr.operand1],
        Instruction::AShr(ashr) => vec![&ashr.operand0, &ashr.operand1],
        Instruction::ICmp(icmp) => vec![&icmp.operand0, &icmp.operand1],
        Instruction::FCmp(fcmp) => vec![&fcmp.operand0, &fcmp.operand1],
        Instruction::Phi(phi) => phi.incoming_values.iter().map(|(op, _)| op).collect(),
        Instruction::Call(call) => call.arguments.iter().map(|(op, _)| op).collect(),
        Instruction::Select(select) => {
            vec![&select.condition, &select.true_value, &select.false_value]
        }
        Instruction::ExtractElement(ee) => vec![&ee.vector, &ee.index],
        Instruction::InsertElement(ie) => vec![&ie.vector, &ie.element, &ie.index],
        Instruction::ShuffleVector(sv) => vec![&sv.operand0, &sv.operand1],
        Instruction::GetElementPtr(gep) => std::iter::once(&gep.address)
            .chain(gep.indices.iter())
            .collect(),
        Instruction::Load(load) => vec![&load.address],
        Instruction::Store(store) => vec![&store.address, &store.value],
        Instruction::AtomicRMW(armw) => vec![&armw.address, &armw.value],
        Instruction::Fence(_) => vec![],
        Instruction::Alloca(_) => vec![],
        Instruction::BitCast(bitcast) => vec![&bitcast.operand],
        Instruction::ZExt(zext) => vec![&zext.operand],
        Instruction::SExt(sext) => vec![&sext.operand],
        Instruction::FAdd(fadd) => vec![&fadd.operand0, &fadd.operand1],
        Instruction::FSub(fsub) => vec![&fsub.operand0, &fsub.operand1],
        Instruction::FMul(fmul) => vec![&fmul.operand0, &fmul.operand1],
        Instruction::FDiv(fdiv) => vec![&fdiv.operand0, &fdiv.operand1],
        Instruction::FRem(frem) => vec![&frem.operand0, &frem.operand1],
        Instruction::FNeg(fneg) => vec![&fneg.operand],
        Instruction::Freeze(freeze) => vec![&freeze.operand],
        _ => unimplemented!("{:?}", instr), // Catch-all for unhandled instructions
    }
}

/// Extracts all operands from an LLVM IR terminator, covering all terminator variants
pub fn get_terminator_operands(term: &Terminator) -> Vec<&Operand> {
    match term {
        Terminator::Ret(ret) => ret.return_operand.iter().collect(),
        Terminator::Br(_br) => vec![],
        Terminator::CondBr(condbr) => vec![&condbr.condition],
        Terminator::Switch(switch) => vec![&switch.operand],
        Terminator::IndirectBr(ibr) => vec![&ibr.operand],
        Terminator::Invoke(invoke) => invoke.arguments.iter().map(|(op, _)| op).collect(),
        Terminator::Unreachable(_) => vec![],
        Terminator::Resume(resume) => vec![&resume.operand],
        Terminator::CleanupRet(cr) => vec![&cr.cleanup_pad],
        Terminator::CatchRet(cr) => vec![&cr.catch_pad],
        Terminator::CatchSwitch(cs) => vec![&cs.parent_pad],
        _ => unimplemented!("{:?}", term),
    }
}

/// Checks if an operand is a constant and is the Poison variant of a constant.
pub fn is_poison(operand: &Operand) -> bool {
    if let Operand::ConstantOperand(cref) = operand {
        if let Constant::Poison(_) = cref.as_ref() {
            return true;
        }
    }
    false
}

/// Unfolds a named struct definition by calling `module.named_struct_def()` on it.
pub fn unfold_named_struct_def(
    struct_name: &str,
    state: &State<DefaultBackend>,
) -> llvm_ir::TypeRef {
    let (def, _) = state.proj.get_named_struct_def(struct_name).unwrap();
    match def {
        NamedStructDef::Opaque => unimplemented!(),
        NamedStructDef::Defined(typeref) => typeref.clone(),
    }
}
