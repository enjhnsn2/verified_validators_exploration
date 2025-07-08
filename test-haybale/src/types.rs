use llvm_ir::{Type, types::FPType};

pub fn get_bits_from_type(type_of: &Type, pointer_size: u64) -> u64 {
    match type_of {
        Type::VoidType => 0,
        Type::IntegerType { bits } => *bits as u64,
        Type::PointerType { .. } => pointer_size,
        Type::FPType(fp_type) => match fp_type {
            FPType::Half => 16,
            FPType::BFloat => 16,
            FPType::Single => 32,
            FPType::Double => 64,
            FPType::FP128 => 128,
            FPType::X86_FP80 => 80,
            FPType::PPC_FP128 => 128,
        },
        Type::FuncType { .. } => pointer_size,
        Type::VectorType {
            element_type,
            num_elements,
            ..
        }
        | Type::ArrayType {
            element_type,
            num_elements,
        } => get_bits_from_type(element_type, pointer_size) * *num_elements as u64,
        Type::StructType { element_types, .. } => element_types
            .iter()
            .map(|e| get_bits_from_type(e, pointer_size))
            .sum(),
        Type::NamedStructType { .. } => pointer_size, // ???
        Type::X86_MMXType => todo!(),
        Type::X86_AMXType => todo!(),
        Type::MetadataType => panic!("Cannot return metadata type"),
        Type::LabelType => panic!("Cannot return label type"),
        Type::TokenType => panic!("Cannot return token type"),
    }
}
