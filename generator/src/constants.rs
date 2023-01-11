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

use llvm_ir::constant::ConstBinaryOp;
use llvm_ir::constant::ConstUnaryOp;
use llvm_ir::constant::Constant as LLVMConstant;
use llvm_ir::constant::Float as LLVMFloat;
use llvm_ir::types::Typed;
use llvm_ir::Module as LLVMModule;

use crate::common::{fact_create, FactContainer, ToStrArray};
use crate::types::TypeParser;
use crate::impl_tostring;

#[derive(Debug, Clone)]
pub struct Constant {
    id: i64,
    family: String,
    family_id: i64,
}

impl_tostring!(Constant);

impl ToStrArray for Constant {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.family.clone(),
            self.family_id.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct Int {
    id: i64,
    bits: u32,
    value: u64,
}

impl_tostring!(Int);

impl ToStrArray for Int {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.bits.to_string(),
            self.value.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct Float {
    id: i64,
    value: f64,
    name: String,
}

impl_tostring!(Float);

impl ToStrArray for Float {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.value.to_string(),
            self.name.clone(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct TypeInfo {
    id: i64,
    tid: i64,
}

impl_tostring!(TypeInfo);

impl ToStrArray for TypeInfo {
    fn to_array(&self) -> Vec<String> {
        vec![self.id.to_string(), self.tid.to_string()]
    }
}

#[derive(Debug, Clone)]
pub struct Array {
    id: i64,
    tid: i64,
    size: i64,
}

impl_tostring!(Array);

impl ToStrArray for Array {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.tid.to_string(),
            self.size.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct Element {
    id: i64,
    pid: i64, // id of parent type Struct, Array or Vector, etc
    eid: i64, // element value constant id
}

impl_tostring!(Element);

impl ToStrArray for Element {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.pid.to_string(),
            self.eid.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct Vector {
    id: i64,
    size: i64,
}

impl_tostring!(Vector);

impl ToStrArray for Vector {
    fn to_array(&self) -> Vec<String> {
        vec![self.id.to_string(), self.size.to_string()]
    }
}

#[derive(Debug, Clone)]
pub struct Struct {
    id: i64,
    name: String,
    num: i64, // number of fields
    is_packed: bool,
}

impl_tostring!(Struct);

impl ToStrArray for Struct {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.name.clone(),
            self.num.to_string(),
            self.is_packed.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct GlobalRef {
    id: i64,
    name: String,
    tid: i64,
}

impl_tostring!(GlobalRef);

impl ToStrArray for GlobalRef {
    fn to_array(&self) -> Vec<String> {
        vec![self.id.to_string(), self.name.clone(), self.tid.to_string()]
    }
}

#[derive(Debug, Clone)]
pub struct ConstExprBinary {
    id: i64,
    op0: i64,
    op1: i64,
}

impl_tostring!(ConstExprBinary);

impl ToStrArray for ConstExprBinary {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.op0.to_string(),
            self.op1.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct ConstExprUnary {
    id: i64,
    op: i64,
    tid: i64,
}

impl_tostring!(ConstExprUnary);

impl ToStrArray for ConstExprUnary {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.op.to_string(),
            self.tid.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct ConstExprCmp {
    id: i64,
    predicate: String,
    op0: i64,
    op1: i64,
}

impl_tostring!(ConstExprCmp);

impl ToStrArray for ConstExprCmp {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.predicate.clone(),
            self.op0.to_string(),
            self.op1.to_string(),
        ]
    }
}

// Used for Select, InsertElement and ShuffleVector
#[derive(Debug, Clone)]
pub struct ConstExprTripleConstId {
    id: i64,
    id0: i64,
    id1: i64,
    id2: i64,
}

impl_tostring!(ConstExprTripleConstId);

impl ToStrArray for ConstExprTripleConstId {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.id0.to_string(),
            self.id1.to_string(),
            self.id2.to_string(),
        ]
    }
}

pub struct ConstExprExtractValue {
    id: i64,
    aggr: i64,
    num: i64,
}

impl_tostring!(ConstExprExtractValue);

impl ToStrArray for ConstExprExtractValue {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.aggr.to_string(),
            self.num.to_string(),
        ]
    }
}

pub struct ConstExprInsertValue {
    id: i64,
    aggr: i64,
    element: i64,
    num: i64,
}

impl_tostring!(ConstExprInsertValue);

impl ToStrArray for ConstExprInsertValue {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.aggr.to_string(),
            self.element.to_string(),
            self.num.to_string(),
        ]
    }
}

pub struct ConstExprGetElementPtr {
    id: i64,
    aggr: i64,
    in_bounds: bool,
    num: i64,
}

impl_tostring!(ConstExprGetElementPtr);

impl ToStrArray for ConstExprGetElementPtr {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.aggr.to_string(),
            self.in_bounds.to_string(),
            self.num.to_string(),
        ]
    }
}

pub struct ConstantParser {
    constants_map: HashMap<String, i64>,

    constants: FactContainer<Constant>,
    ints: FactContainer<Int>,
    floats: FactContainer<Float>,
    type_infos: FactContainer<TypeInfo>,
    structs: FactContainer<Struct>,
    struct_value: FactContainer<Element>,
    arrays: FactContainer<Array>,
    array_value: FactContainer<Element>,
    vectors: FactContainer<Vector>,
    vector_value: FactContainer<Element>,
    global_refs: FactContainer<GlobalRef>,
    binary_ops: FactContainer<ConstExprBinary>,
    unary_ops: FactContainer<ConstExprUnary>,
    cmps: FactContainer<ConstExprCmp>,
    selects: FactContainer<ConstExprTripleConstId>,
    extractelements: FactContainer<ConstExprBinary>,
    insertelements: FactContainer<ConstExprTripleConstId>,
    shufflevectors: FactContainer<ConstExprTripleConstId>,
    extractvalues: FactContainer<ConstExprExtractValue>,
    insertvalues: FactContainer<ConstExprInsertValue>,
    getelementptrs: FactContainer<ConstExprGetElementPtr>,
    gep_index: FactContainer<Element>,
    insertvalue_index: FactContainer<Element>,
    extractvalue_index: FactContainer<Element>,
}

impl ConstantParser {
    pub fn new() -> Result<Self, String> {
        Ok(ConstantParser {
            constants_map: HashMap::new(),

            constants: FactContainer::new("constant"),
            ints: FactContainer::new("constant_int"),
            floats: FactContainer::new("constant_float"),
            type_infos: FactContainer::new("constant_type_info"),
            structs: FactContainer::new("constant_struct"),
            struct_value: FactContainer::new("constant_struct_value"),
            arrays: FactContainer::new("constant_array"),
            array_value: FactContainer::new("constant_array_value"),
            vectors: FactContainer::new("constant_vector"),
            vector_value: FactContainer::new("constant_vector_value"),
            global_refs: FactContainer::new("constant_global_ref"),
            binary_ops: FactContainer::new("constant_binary_operand"),
            unary_ops: FactContainer::new("constant_unary_operand"),
            cmps: FactContainer::new("constant_cmp"),
            selects: FactContainer::new("constant_select"),
            extractelements: FactContainer::new("constant_extractelement"),
            insertelements: FactContainer::new("constant_insertelement"),
            shufflevectors: FactContainer::new("constant_shufflevector"),
            extractvalues: FactContainer::new("constant_extractvalue"),
            insertvalues: FactContainer::new("constant_insertvalue"),
            getelementptrs: FactContainer::new("constant_getelementptr"),
            gep_index: FactContainer::new("constant_gep_index"),
            insertvalue_index: FactContainer::new("constant_insertvalue_index"),
            extractvalue_index: FactContainer::new("constant_extractvalue_index"),
        })
    }

    pub fn parse_const_expr_binary<T: ConstBinaryOp>(
        &mut self,
        module: &LLVMModule,
        type_parser: &mut TypeParser,
        constant: &T,
    ) -> Result<i64, String> {
        let cid = self.binary_ops.get_id();

        let op0_id = self.parse(module, type_parser, &constant.get_operand0())?;
        let op1_id = self.parse(module, type_parser, &constant.get_operand1())?;
        self.binary_ops.push(ConstExprBinary {
            id: cid,
            op0: op0_id,
            op1: op1_id,
        });
        Ok(cid)
    }

    pub fn parse_const_expr_unary<T: ConstUnaryOp + Typed>(
        &mut self,
        module: &LLVMModule,
        type_parser: &mut TypeParser,
        constant: &T,
    ) -> Result<i64, String> {
        let cid = self.unary_ops.get_id();

        let op_id = self.parse(module, type_parser, &constant.get_operand())?;

        // Typed::get_type requires the argument Types but it is not used
        // by ConstUnaryOp
        let tid = type_parser.parse(module, &constant.get_type(&module.types))?;
        self.unary_ops.push(ConstExprUnary {
            id: cid,
            op: op_id,
            tid,
        });
        Ok(cid)
    }

    pub fn parse(
        &mut self,
        module: &LLVMModule,
        type_parser: &mut TypeParser,
        constant: &LLVMConstant,
    ) -> Result<i64, String> {
        let name = &constant.to_string();

        if let Some(t) = self.constants_map.get(name) {
            return Ok(*t);
        }

        let const_id = self.constants.get_id();
        self.constants_map.insert(name.clone(), const_id);

        let (family, family_id) = match constant {
            LLVMConstant::Int { bits, value } => {
                let cid = self.ints.get_id();

                self.ints.push(Int {
                    id: cid,
                    bits: *bits,
                    value: *value,
                });

                ("int", cid)
            }
            LLVMConstant::Float(float) => {
                let cid = self.floats.get_id();

                let (ftype, val) = match float {
                    LLVMFloat::Single(v) => ("float", *v as f64),
                    LLVMFloat::Double(v) => ("double", *v),
                    _ => {
                        return Err(format!("Unsupported float type: {:?}", float));
                    }
                };

                self.floats.push(Float {
                    id: cid,
                    value: val,
                    name: ftype.to_string(),
                });

                ("float", cid)
            }
            LLVMConstant::Null(ty) => {
                let cid = self.type_infos.get_id();

                let tid = type_parser.parse(module, ty)?;

                self.type_infos.push(TypeInfo { id: cid, tid });

                ("null", cid)
            }
            LLVMConstant::AggregateZero(ty) => {
                let cid = self.type_infos.get_id();

                let tid = type_parser.parse(module, ty)?;

                self.type_infos.push(TypeInfo { id: cid, tid });

                ("aggregate_zero", cid)
            }
            LLVMConstant::Struct {
                name,
                values,
                is_packed,
            } => {
                let cid = self.structs.get_id();

                let name_val = if let Some(name_str) = name {
                    name_str
                } else {
                    ""
                };

                self.structs.push(Struct {
                    id: cid,
                    name: name_val.to_string(),
                    num: values.len() as i64,
                    is_packed: *is_packed,
                });

                for el in values {
                    let el_cid = self.struct_value.get_id();

                    let sub_cid = self.parse(module, type_parser, el)?;
                    self.struct_value.push(Element {
                        id: el_cid,
                        pid: cid,
                        eid: sub_cid,
                    });
                }
                ("struct", cid)
            }
            LLVMConstant::Array {
                element_type,
                elements,
            } => {
                let cid = self.arrays.get_id();

                let tid = type_parser.parse(module, element_type)?;

                self.arrays.push(Array {
                    id: cid,
                    tid,
                    size: elements.len() as i64,
                });

                for el in elements {
                    let el_cid = self.array_value.get_id();

                    let sub_cid = self.parse(module, type_parser, el)?;
                    self.array_value.push(Element {
                        id: el_cid,
                        pid: cid,
                        eid: sub_cid,
                    });
                }

                ("array", cid)
            }
            LLVMConstant::Vector(elements) => {
                let cid = self.vectors.get_id();

                self.vectors.push(Vector {
                    id: cid,
                    size: elements.len() as i64,
                });

                for el in elements {
                    let el_cid = self.vector_value.get_id();

                    let sub_cid = self.parse(module, type_parser, el)?;
                    self.vector_value.push(Element {
                        id: el_cid,
                        pid: cid,
                        eid: sub_cid,
                    });
                }

                ("vector", cid)
            }
            LLVMConstant::Undef(ty) => {
                let cid = self.type_infos.get_id();

                let tid = type_parser.parse(module, ty)?;

                self.type_infos.push(TypeInfo { id: cid, tid });

                ("under", cid)
            }
            LLVMConstant::Poison(ty) => {
                let cid = self.type_infos.get_id();

                let tid = type_parser.parse(module, ty)?;

                self.type_infos.push(TypeInfo { id: cid, tid });

                ("poison", cid)
            }
            LLVMConstant::BlockAddress => ("block_address", -1),
            LLVMConstant::GlobalReference { name, ty } => {
                let cid = self.global_refs.get_id();

                let tid = type_parser.parse(module, ty)?;

                self.global_refs.push(GlobalRef {
                    id: cid,
                    name: name.to_string(),
                    tid,
                });

                ("global_ref", cid)
            }
            LLVMConstant::TokenNone => ("token_none", -1),

            // Constant Expressions
            LLVMConstant::Add(op) => {
                let cid = self.parse_const_expr_binary(module, type_parser, op)?;
                ("add", cid)
            }
            LLVMConstant::Sub(op) => {
                let cid = self.parse_const_expr_binary(module, type_parser, op)?;
                ("sub", cid)
            }
            LLVMConstant::Mul(op) => {
                let cid = self.parse_const_expr_binary(module, type_parser, op)?;
                ("mul", cid)
            }
            LLVMConstant::UDiv(op) => {
                let cid = self.parse_const_expr_binary(module, type_parser, op)?;
                ("udiv", cid)
            }
            LLVMConstant::SDiv(op) => {
                let cid = self.parse_const_expr_binary(module, type_parser, op)?;
                ("sdiv", cid)
            }
            LLVMConstant::URem(op) => {
                let cid = self.parse_const_expr_binary(module, type_parser, op)?;
                ("urem", cid)
            }
            LLVMConstant::SRem(op) => {
                let cid = self.parse_const_expr_binary(module, type_parser, op)?;
                ("srem", cid)
            }
            LLVMConstant::And(op) => {
                let cid = self.parse_const_expr_binary(module, type_parser, op)?;
                ("and", cid)
            }
            LLVMConstant::Or(op) => {
                let cid = self.parse_const_expr_binary(module, type_parser, op)?;
                ("or", cid)
            }
            LLVMConstant::Xor(op) => {
                let cid = self.parse_const_expr_binary(module, type_parser, op)?;
                ("xor", cid)
            }
            LLVMConstant::Shl(op) => {
                let cid = self.parse_const_expr_binary(module, type_parser, op)?;
                ("shl", cid)
            }
            LLVMConstant::LShr(op) => {
                let cid = self.parse_const_expr_binary(module, type_parser, op)?;
                ("lshr", cid)
            }
            LLVMConstant::AShr(op) => {
                let cid = self.parse_const_expr_binary(module, type_parser, op)?;
                ("ashr", cid)
            }
            LLVMConstant::FAdd(op) => {
                let cid = self.parse_const_expr_binary(module, type_parser, op)?;
                ("fadd", cid)
            }
            LLVMConstant::FSub(op) => {
                let cid = self.parse_const_expr_binary(module, type_parser, op)?;
                ("fsub", cid)
            }
            LLVMConstant::FMul(op) => {
                let cid = self.parse_const_expr_binary(module, type_parser, op)?;
                ("fmul", cid)
            }
            LLVMConstant::FDiv(op) => {
                let cid = self.parse_const_expr_binary(module, type_parser, op)?;
                ("fdiv", cid)
            }
            LLVMConstant::FRem(op) => {
                let cid = self.parse_const_expr_binary(module, type_parser, op)?;
                ("frem", cid)
            }
            LLVMConstant::ExtractElement(op) => {
                // actually ExtractElement is not a ConstBinaryOp but it also has only two
                // references to constants, so reuse ConstExprBinary to have a bit less
                // different instances for data storage.
                let cid = self.extractelements.get_id();

                let op0_id = self.parse(module, type_parser, &op.vector)?;
                let op1_id = self.parse(module, type_parser, &op.index)?;
                self.extractelements.push(ConstExprBinary {
                    id: cid,
                    op0: op0_id,
                    op1: op1_id,
                });
                ("extractelement", cid)
            }
            LLVMConstant::InsertElement(op) => {
                let cid = self.insertelements.get_id();

                let op0_id = self.parse(module, type_parser, &op.vector)?;
                let op1_id = self.parse(module, type_parser, &op.element)?;
                let op2_id = self.parse(module, type_parser, &op.index)?;
                self.insertelements.push(ConstExprTripleConstId {
                    id: cid,
                    id0: op0_id,
                    id1: op1_id,
                    id2: op2_id,
                });
                ("insertelement", cid)
            }
            LLVMConstant::ShuffleVector(op) => {
                let cid = self.shufflevectors.get_id();

                let op0_id = self.parse(module, type_parser, &op.operand0)?;
                let op1_id = self.parse(module, type_parser, &op.operand1)?;
                let op2_id = self.parse(module, type_parser, &op.mask)?;
                self.shufflevectors.push(ConstExprTripleConstId {
                    id: cid,
                    id0: op0_id,
                    id1: op1_id,
                    id2: op2_id,
                });
                ("shufflevector", cid)
            }
            LLVMConstant::ExtractValue(op) => {
                let cid = self.extractvalues.get_id();

                let op0_id = self.parse(module, type_parser, &op.aggregate)?;
                let num = op.indices.len();
                self.extractvalues.push(ConstExprExtractValue {
                    id: cid,
                    aggr: op0_id,
                    num: num as i64,
                });
                for el in &op.indices {
                    let el_cid = self.extractvalue_index.get_id();

                    self.extractvalue_index.push(Element {
                        id: el_cid,
                        pid: cid,
                        eid: *el as i64,
                    });
                }
                ("extractvalue", cid)
            }
            LLVMConstant::InsertValue(op) => {
                let cid = self.insertvalues.get_id();

                let op0_id = self.parse(module, type_parser, &op.aggregate)?;
                let op1_id = self.parse(module, type_parser, &op.element)?;
                let num = op.indices.len();
                self.insertvalues.push(ConstExprInsertValue {
                    id: cid,
                    aggr: op0_id,
                    element: op1_id,
                    num: num as i64,
                });
                for el in &op.indices {
                    let el_cid = self.insertvalue_index.get_id();

                    self.insertvalue_index.push(Element {
                        id: el_cid,
                        pid: cid,
                        eid: *el as i64,
                    });
                }

                ("insertvalue", cid)
            }
            LLVMConstant::GetElementPtr(op) => {
                let cid = self.getelementptrs.get_id();

                let op0_id = self.parse(module, type_parser, &op.address)?;
                let num = op.indices.len();
                self.getelementptrs.push(ConstExprGetElementPtr {
                    id: cid,
                    aggr: op0_id,
                    in_bounds: op.in_bounds,
                    num: num as i64,
                });
                for el in &op.indices {
                    let el_cid = self.gep_index.get_id();

                    let sub_cid = self.parse(module, type_parser, el)?;
                    self.gep_index.push(Element {
                        id: el_cid,
                        pid: cid,
                        eid: sub_cid,
                    });
                }
                ("getelementptr", cid)
            }
            LLVMConstant::Trunc(op) => {
                let cid = self.parse_const_expr_unary(module, type_parser, op)?;
                ("trunc", cid)
            }
            LLVMConstant::ZExt(op) => {
                let cid = self.parse_const_expr_unary(module, type_parser, op)?;
                ("zext", cid)
            }
            LLVMConstant::SExt(op) => {
                let cid = self.parse_const_expr_unary(module, type_parser, op)?;
                ("sext", cid)
            }
            LLVMConstant::FPTrunc(op) => {
                let cid = self.parse_const_expr_unary(module, type_parser, op)?;
                ("fptrunc", cid)
            }
            LLVMConstant::FPExt(op) => {
                let cid = self.parse_const_expr_unary(module, type_parser, op)?;
                ("fpext", cid)
            }
            LLVMConstant::FPToUI(op) => {
                let cid = self.parse_const_expr_unary(module, type_parser, op)?;
                ("fptoui", cid)
            }
            LLVMConstant::FPToSI(op) => {
                let cid = self.parse_const_expr_unary(module, type_parser, op)?;
                ("fptosi", cid)
            }
            LLVMConstant::UIToFP(op) => {
                let cid = self.parse_const_expr_unary(module, type_parser, op)?;
                ("uitofp", cid)
            }
            LLVMConstant::SIToFP(op) => {
                let cid = self.parse_const_expr_unary(module, type_parser, op)?;
                ("sitofp", cid)
            }
            LLVMConstant::PtrToInt(op) => {
                let cid = self.parse_const_expr_unary(module, type_parser, op)?;
                ("ptrtoint", cid)
            }
            LLVMConstant::IntToPtr(op) => {
                let cid = self.parse_const_expr_unary(module, type_parser, op)?;
                ("inttoptr", cid)
            }
            LLVMConstant::BitCast(op) => {
                let cid = self.parse_const_expr_unary(module, type_parser, op)?;
                ("bitcast", cid)
            }
            LLVMConstant::AddrSpaceCast(op) => {
                let cid = self.parse_const_expr_unary(module, type_parser, op)?;
                ("addrspacecast", cid)
            }
            LLVMConstant::ICmp(op) => {
                let cid = self.cmps.get_id();

                let op0_id = self.parse(module, type_parser, &op.get_operand0())?;
                let op1_id = self.parse(module, type_parser, &op.get_operand1())?;
                self.cmps.push(ConstExprCmp {
                    id: cid,
                    predicate: op.predicate.to_string(),
                    op0: op0_id,
                    op1: op1_id,
                });
                ("icmp", cid)
            }
            LLVMConstant::FCmp(op) => {
                let cid = self.cmps.get_id();

                let op0_id = self.parse(module, type_parser, &op.get_operand0())?;
                let op1_id = self.parse(module, type_parser, &op.get_operand1())?;
                self.cmps.push(ConstExprCmp {
                    id: cid,
                    predicate: op.predicate.to_string(),
                    op0: op0_id,
                    op1: op1_id,
                });
                ("fcmp", cid)
            }
            LLVMConstant::Select(op) => {
                let cid = self.selects.get_id();

                let op0_id = self.parse(module, type_parser, &op.condition)?;
                let op1_id = self.parse(module, type_parser, &op.true_value)?;
                let op2_id = self.parse(module, type_parser, &op.false_value)?;
                self.selects.push(ConstExprTripleConstId {
                    id: cid,
                    id0: op0_id,
                    id1: op1_id,
                    id2: op2_id,
                });
                ("select", cid)
            }
        };

        self.constants.push(Constant {
            id: const_id,
            family: family.to_string(),
            family_id,
        });

        Ok(const_id)
    }

    pub fn write_files(&self, dir: &str) -> Result<(), String> {
        fact_create(dir, &self.constants.name, &self.constants.as_string(";"))?;
        fact_create(dir, &self.ints.name, &self.ints.as_string(";"))?;
        fact_create(dir, &self.floats.name, &self.floats.as_string(";"))?;
        fact_create(dir, &self.type_infos.name, &self.type_infos.as_string(";"))?;
        fact_create(dir, &self.structs.name, &self.structs.as_string(";"))?;
        fact_create(
            dir,
            &self.struct_value.name,
            &self.struct_value.as_string(";"),
        )?;
        fact_create(dir, &self.arrays.name, &self.arrays.as_string(";"))?;
        fact_create(
            dir,
            &self.array_value.name,
            &self.array_value.as_string(";"),
        )?;
        fact_create(dir, &self.vectors.name, &self.vectors.as_string(";"))?;
        fact_create(
            dir,
            &self.vector_value.name,
            &self.vector_value.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.global_refs.name,
            &self.global_refs.as_string(";"),
        )?;
        fact_create(dir, &self.binary_ops.name, &self.binary_ops.as_string(";"))?;
        fact_create(dir, &self.unary_ops.name, &self.unary_ops.as_string(";"))?;
        fact_create(dir, &self.cmps.name, &self.cmps.as_string(";"))?;
        fact_create(dir, &self.selects.name, &self.selects.as_string(";"))?;
        fact_create(
            dir,
            &self.extractelements.name,
            &self.extractelements.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.insertelements.name,
            &self.insertelements.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.shufflevectors.name,
            &self.shufflevectors.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.extractvalues.name,
            &self.extractvalues.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.insertvalues.name,
            &self.insertvalues.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.getelementptrs.name,
            &self.getelementptrs.as_string(";"),
        )?;
        fact_create(dir, &self.gep_index.name, &self.gep_index.as_string(";"))?;
        fact_create(
            dir,
            &self.insertvalue_index.name,
            &self.insertvalue_index.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.extractvalue_index.name,
            &self.extractvalue_index.as_string(";"),
        )?;
        Ok(())
    }
}
