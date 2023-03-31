// Copyright (c) 2023 Google LLC
//
// Permission is hereby granted, free of charge, to any person obtaining a copy of
// this software and associated documentation files (the "Software"), to deal in
// the Software without restriction, including without limitation the rights to
// use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
// the Software, and to permit persons to whom the Software is furnished to do so,
// subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
// FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
// COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
// IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
// CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

use std::collections::HashMap;

use llvm_ir::types;
use llvm_ir::types::FPType;
use llvm_ir::Module;

use crate::common::{fact_create, FactContainer, ToStrArray};
use crate::impl_tostring;

#[derive(Debug, Clone)]
struct Type {
    pub id: i64,
    pub name: String,
    pub bits: i64,
    pub family: String,
    pub family_id: i64,
}

impl_tostring!(Type);

impl ToStrArray for Type {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.name.clone(),
            self.bits.to_string(),
            self.family.clone(),
            self.family_id.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
struct ArrayType {
    pub id: i64,
    pub tid: i64,
    pub size: i64,
}

impl_tostring!(ArrayType);

impl ToStrArray for ArrayType {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.tid.to_string(),
            self.size.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
struct VectorType {
    pub id: i64,
    pub tid: i64,
    pub size: i64,
    pub scalable: bool,
}

impl_tostring!(VectorType);

impl ToStrArray for VectorType {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.tid.to_string(),
            self.size.to_string(),
            self.scalable.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
struct StructType {
    pub id: i64,
    pub packed: bool,
    pub field_cnt: i64,
}

impl_tostring!(StructType);

impl ToStrArray for StructType {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.packed.to_string(),
            self.field_cnt.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
struct StructFieldType {
    pub id: i64,
    pub sid: i64,
    pub tid: i64,
}

impl_tostring!(StructFieldType);

impl ToStrArray for StructFieldType {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.sid.to_string(),
            self.tid.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
struct FuncPtrType {
    pub id: i64,
    pub ret_tid: i64,
    pub arg_cnt: i64,
    pub is_var_arg: bool,
}

impl_tostring!(FuncPtrType);

impl ToStrArray for FuncPtrType {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.ret_tid.to_string(),
            self.arg_cnt.to_string(),
            self.is_var_arg.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
struct FuncPtrArgType {
    pub id: i64,
    pub func_ptr_id: i64,
    pub tid: i64,
}

impl_tostring!(FuncPtrArgType);

impl ToStrArray for FuncPtrArgType {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.func_ptr_id.to_string(),
            self.tid.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
struct PointerType {
    pub id: i64,
    pub tid: i64,
    pub addr_space: u64,
}

impl_tostring!(PointerType);

impl ToStrArray for PointerType {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.tid.to_string(),
            self.addr_space.to_string(),
        ]
    }
}

pub struct TypeParser {
    pointer_size: u8,
    types_map: HashMap<String, (i64, i64)>,
    types: FactContainer<Type>,
    arrays: FactContainer<ArrayType>,
    vectors: FactContainer<VectorType>,
    structs: FactContainer<StructType>,
    struct_fields: FactContainer<StructFieldType>,
    func_ptrs: FactContainer<FuncPtrType>,
    func_ptr_args: FactContainer<FuncPtrArgType>,
    ptrs: FactContainer<PointerType>,
}

impl TypeParser {
    pub fn new(ptr_size: u8) -> Result<Self, String> {
        Ok(TypeParser {
            pointer_size: ptr_size,
            types_map: HashMap::new(),
            types: FactContainer::new("type"),
            arrays: FactContainer::new("type_array"),
            vectors: FactContainer::new("type_vector"),
            structs: FactContainer::new("type_struct"),
            struct_fields: FactContainer::new("type_struct_field"),
            func_ptrs: FactContainer::new("type_func_ptr"),
            func_ptr_args: FactContainer::new("type_func_ptr_arg"),
            ptrs: FactContainer::new("type_ptr"),
        })
    }

    pub fn parse(&mut self, module: &Module, ty: &types::TypeRef) -> Result<i64, String> {
        let (tid, _) = self.parse_impl(module, ty)?;
        Ok(tid)
    }

    fn parse_impl(&mut self, module: &Module, ty: &types::TypeRef) -> Result<(i64, i64), String> {
        let name = &ty.to_string();

        if let Some(t) = self.types_map.get(name) {
            return Ok(*t);
        }

        let type_id = self.types.get_id();

        // 0 as a size is safe use here for now,
        // because a type can't include itself, only pointer.
        // TODO: figure out better solution.
        self.types_map.insert(name.clone(), (type_id, 0));

        let (family, size, family_id) = match ty.as_ref() {
            types::Type::StructType {
                element_types,
                is_packed,
            } => {
                let tid = self.structs.get_id();

                self.structs.push(StructType {
                    id: tid,
                    field_cnt: element_types.len() as i64,
                    packed: *is_packed,
                });

                let mut size = 0;
                for el in element_types {
                    let field_id = self.struct_fields.get_id();
                    let (sub_id, sz) = self.parse_impl(module, el)?;
                    self.struct_fields.push(StructFieldType {
                        id: field_id,
                        sid: tid,
                        tid: sub_id,
                    });
                    size += sz;
                }

                ("struct", size, tid)
            }
            types::Type::VectorType {
                element_type,
                num_elements,
                scalable,
            } => {
                let tid = self.vectors.get_id();

                let (sub_tid, sz) = self.parse_impl(module, element_type)?;
                self.vectors.push(VectorType {
                    id: tid,
                    tid: sub_tid,
                    size: *num_elements as i64,
                    scalable: *scalable,
                });

                ("vector", sz * (*num_elements as i64), tid)
            }
            types::Type::ArrayType {
                element_type,
                num_elements,
            } => {
                let tid = self.arrays.get_id();

                let (sub_tid, sz) = self.parse_impl(module, element_type)?;
                self.arrays.push(ArrayType {
                    id: tid,
                    tid: sub_tid,
                    size: *num_elements as i64,
                });

                ("array", sz * (*num_elements as i64), tid)
            }
            types::Type::NamedStructType { name } => {
                let tid = self.structs.get_id();

                let mut size = 0;
                if let Some(named_st) = module.types.named_struct_def(name) {
                    match named_st {
                        types::NamedStructDef::Opaque => {
                            self.structs.push(StructType {
                                id: tid,
                                field_cnt: -1,
                                packed: false,
                            });
                        }
                        types::NamedStructDef::Defined(ty) => match ty.as_ref() {
                            types::Type::StructType {
                                element_types,
                                is_packed,
                            } => {
                                self.structs.push(StructType {
                                    id: tid,
                                    field_cnt: element_types.len() as i64,
                                    packed: *is_packed,
                                });

                                for el in element_types {
                                    let field_id = self.struct_fields.get_id();

                                    let (sub_id, sz) = self.parse_impl(module, el)?;
                                    self.struct_fields.push(StructFieldType {
                                        id: field_id,
                                        sid: tid,
                                        tid: sub_id,
                                    });
                                    size += sz;
                                }
                            }
                            _ => {
                                return Err(format!(
                                    "Unexpected type during struct parsing: {:?}",
                                    ty
                                ));
                            }
                        },
                    }
                } else {
                    return Err(format!("Unknown struct name {}!", name));
                }
                ("struct", size, tid)
            }
            types::Type::IntegerType { bits } => ("int", *bits as i64, -1),
            types::Type::PointerType {
                pointee_type,
                addr_space,
            } => {
                let tid = self.ptrs.get_id();

                let (sub_tid, _) = self.parse_impl(module, pointee_type)?;
                self.ptrs.push(PointerType {
                    id: tid,
                    tid: sub_tid,
                    addr_space: *addr_space as u64,
                });

                ("pointer", self.pointer_size as i64, tid)
            }
            types::Type::FuncType {
                result_type,
                param_types,
                is_var_arg,
            } => {
                let tid = self.func_ptrs.get_id();

                let (ret_type_id, _) = self.parse_impl(module, result_type)?;
                self.func_ptrs.push(FuncPtrType {
                    id: tid,
                    ret_tid: ret_type_id,
                    arg_cnt: param_types.len() as i64,
                    is_var_arg: *is_var_arg,
                });

                for param in param_types {
                    let arg_id = self.func_ptr_args.get_id();

                    let (pid, _) = self.parse_impl(module, param)?;
                    self.func_ptr_args.push(FuncPtrArgType {
                        id: arg_id,
                        func_ptr_id: tid,
                        tid: pid,
                    });
                }
                ("func_ptr", self.pointer_size as i64, tid)
            }
            types::Type::VoidType => ("void", 0, -1),
            types::Type::FPType(ftype) => {
                let bits = match ftype {
                    FPType::Half => 16,
                    FPType::Single => 32,
                    FPType::Double => 64,
                    FPType::FP128 => 128,
                    FPType::X86_FP80 => 80,
                    FPType::PPC_FP128 => 128,
                    FPType::BFloat => 16,
                };
                ("float", bits, -1)
            }
            types::Type::X86_MMXType => ("mmx_type", 0, -1),
            types::Type::MetadataType => ("metadata", 0, -1),
            types::Type::LabelType => ("label", 0, -1),
            types::Type::TokenType => ("token", 0, -1),
            types::Type::X86_AMXType => ("amx_type", 0, -1),
        };

        // update information about size.
        self.types_map.insert(name.clone(), (type_id, size));

        self.types.push(Type {
            id: type_id,
            name: name.clone(),
            bits: size,
            family: family.to_string(),
            family_id,
        });

        Ok((type_id, size))
    }

    pub fn write_files(&self, dir: &str) -> Result<(), String> {
        fact_create(dir, &self.types.name, &self.types.as_string(";"))?;
        fact_create(dir, &self.arrays.name, &self.arrays.as_string(";"))?;
        fact_create(dir, &self.vectors.name, &self.vectors.as_string(";"))?;
        fact_create(dir, &self.structs.name, &self.structs.as_string(";"))?;
        fact_create(
            dir,
            &self.struct_fields.name,
            &self.struct_fields.as_string(";"),
        )?;
        fact_create(dir, &self.func_ptrs.name, &self.func_ptrs.as_string(";"))?;
        fact_create(
            dir,
            &self.func_ptr_args.name,
            &self.func_ptr_args.as_string(";"),
        )?;
        fact_create(dir, &self.ptrs.name, &self.ptrs.as_string(";"))?;
        Ok(())
    }
}
