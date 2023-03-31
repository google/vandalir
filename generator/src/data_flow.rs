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

use std::collections::{HashMap, HashSet};
use std::mem;
use std::string::ToString;

use llvm_ir::constant::Constant as LLVMConstant;
use llvm_ir::instruction::Instruction as LLVMInstruction;
use llvm_ir::instruction::{BinaryOp, UnaryOp};
use llvm_ir::operand::Operand as LLVMOperand;
use llvm_ir::terminator::Terminator as LLVMTerminator;

use crate::analysis::ENTRY_BLOCK_PRED;
use crate::common::{fact_create, FactContainer, ToStrArray};
use crate::constants::ConstantParser;
use crate::impl_tostring;

const STYPE_INSTR: i64 = 0;
const STYPE_CONST: i64 = 1;
const STYPE_GLOBAL: i64 = 2;
const STYPE_FUNC_ARG: i64 = 3;

#[derive(Debug, Clone)]
pub struct DataFlowRelation {
    id: i64,
    fid: i64,
    bid: i64,
    iid: i64, // sink instruction
    // type of source: 0 - instruction,
    //                 1 - constant
    //                 2 - global var,
    //                 3 - function arg
    stype: i64,
    src: i64, // source
}

#[derive(Debug, Clone)]
pub struct RelationBacklog {
    pub fid: i64,
    pub bid: i64,
    pub iid: i64,
    pub name: String,
    pub is_glob_var: bool,
}

impl_tostring!(DataFlowRelation);

impl ToStrArray for DataFlowRelation {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.fid.to_string(),
            self.bid.to_string(),
            self.iid.to_string(),
            self.stype.to_string(),
            self.src.to_string(),
        ]
    }
}

pub struct DataFlow {
    vreg_map: HashMap<i64, HashMap<String, i64>>,
    backlog: Vec<RelationBacklog>,
    last_fid: i64,
    data: FactContainer<DataFlowRelation>,
}

impl DataFlow {
    pub fn new() -> Self {
        DataFlow {
            vreg_map: HashMap::new(),
            backlog: Vec::new(),
            last_fid: -1,
            data: FactContainer::new("data_flow_local"),
        }
    }

    fn constant_split_to_parts(
        &self,
        const_parser: &ConstantParser,
        globals: &mut Vec<String>,
        consts: &mut Vec<i64>,
        constant: &LLVMConstant,
    ) {
        if let Some(cid) = const_parser.get(&constant) {
            match constant {
                LLVMConstant::Int { bits: _, value: _ } => {
                    consts.push(cid);
                }
                LLVMConstant::Float(_) => {
                    consts.push(cid);
                }
                LLVMConstant::Null(_) => {
                    consts.push(cid);
                }
                LLVMConstant::TokenNone => {
                    consts.push(cid);
                }
                LLVMConstant::Undef(_) => {
                    consts.push(cid);
                }
                LLVMConstant::Poison(_) => {
                    consts.push(cid);
                }
                LLVMConstant::BlockAddress => {
                    consts.push(cid);
                }
                LLVMConstant::AggregateZero(_) => {
                    consts.push(cid);
                }
                LLVMConstant::GlobalReference { name, ty: _ } => {
                    globals.push(name.to_string());
                }
                LLVMConstant::Struct {
                    name: _,
                    values,
                    is_packed: _,
                } => {
                    for el in values {
                        self.constant_split_to_parts(const_parser, globals, consts, el);
                    }
                }
                LLVMConstant::Array {
                    element_type: _,
                    elements,
                } => {
                    for el in elements {
                        self.constant_split_to_parts(const_parser, globals, consts, el);
                    }
                }
                LLVMConstant::Vector(elements) => {
                    for el in elements {
                        self.constant_split_to_parts(const_parser, globals, consts, el);
                    }
                }
                // Constant Expressions
                LLVMConstant::Add(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                }
                LLVMConstant::Sub(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                }
                LLVMConstant::Mul(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                }
                LLVMConstant::UDiv(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                }
                LLVMConstant::SDiv(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                }
                LLVMConstant::URem(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                }
                LLVMConstant::SRem(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                }
                LLVMConstant::And(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                }
                LLVMConstant::Or(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                }
                LLVMConstant::Xor(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                }
                LLVMConstant::Shl(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                }
                LLVMConstant::LShr(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                }
                LLVMConstant::AShr(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                }
                LLVMConstant::FAdd(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                }
                LLVMConstant::FSub(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                }
                LLVMConstant::FMul(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                }
                LLVMConstant::FDiv(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                }
                LLVMConstant::FRem(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                }
                LLVMConstant::ExtractElement(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.vector);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.index);
                }
                LLVMConstant::InsertElement(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.vector);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.element);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.index);
                }
                LLVMConstant::ShuffleVector(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.mask);
                }
                LLVMConstant::ExtractValue(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.aggregate);
                }
                LLVMConstant::InsertValue(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.aggregate);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.element);
                }
                LLVMConstant::GetElementPtr(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.address);
                    for el in &op.indices {
                        self.constant_split_to_parts(const_parser, globals, consts, el);
                    }
                }
                LLVMConstant::Trunc(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand);
                }
                LLVMConstant::ZExt(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand);
                }
                LLVMConstant::SExt(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand);
                }
                LLVMConstant::FPTrunc(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand);
                }
                LLVMConstant::FPExt(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand);
                }
                LLVMConstant::FPToUI(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand);
                }
                LLVMConstant::FPToSI(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand);
                }
                LLVMConstant::UIToFP(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand);
                }
                LLVMConstant::SIToFP(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand);
                }
                LLVMConstant::PtrToInt(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand);
                }
                LLVMConstant::IntToPtr(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand);
                }
                LLVMConstant::BitCast(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand);
                }
                LLVMConstant::AddrSpaceCast(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand);
                }
                LLVMConstant::ICmp(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                }
                LLVMConstant::FCmp(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand0);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.operand1);
                }
                LLVMConstant::Select(op) => {
                    self.constant_split_to_parts(const_parser, globals, consts, &op.condition);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.true_value);
                    self.constant_split_to_parts(const_parser, globals, consts, &op.false_value);
                }
            };
        }
    }

    fn update_source(
        &mut self,
        const_parser: &ConstantParser,
        fid: i64,
        bid: i64,
        iid: i64,
        op: &LLVMOperand,
    ) {
        let map = self
            .vreg_map
            .get(&bid)
            .expect("Error: vreg_map not found for local bid");
        match op {
            LLVMOperand::LocalOperand { name, ty: _ } => {
                // at this moment we may resolve a source only for vreg from
                // current block, because CFG is not know yet.
                // Dependencies from other blocks will be resolved at `finalize`
                if let Some(src_iid) = map.get(&name.to_string()) {
                    let id = self.data.get_id();
                    self.data.push(DataFlowRelation {
                        id,
                        fid,
                        bid,
                        iid,
                        stype: STYPE_INSTR,
                        src: *src_iid,
                    });
                } else {
                    self.backlog.push(RelationBacklog {
                        fid,
                        bid,
                        iid,
                        name: name.to_string(),
                        is_glob_var: false,
                    });
                }
            }
            LLVMOperand::ConstantOperand(constant) => {
                let mut consts = Vec::new();
                let mut globals = Vec::new();
                self.constant_split_to_parts(const_parser, &mut globals, &mut consts, constant);
                for cid in consts {
                    let id = self.data.get_id();
                    self.data.push(DataFlowRelation {
                        id,
                        fid,
                        bid,
                        iid,
                        stype: STYPE_CONST,
                        src: cid,
                    });
                }
                for glob_name in globals {
                    if let Some(src_iid) = map.get(&glob_name) {
                        let id = self.data.get_id();
                        self.data.push(DataFlowRelation {
                            id,
                            fid,
                            bid,
                            iid,
                            stype: STYPE_INSTR,
                            src: *src_iid,
                        });
                    } else {
                        self.backlog.push(RelationBacklog {
                            fid,
                            bid,
                            iid,
                            name: glob_name.clone(),
                            is_glob_var: true,
                        });
                    }
                }
            }
            LLVMOperand::MetadataOperand => {
                return;
            }
        }
    }

    pub fn add_instruction(
        &mut self,
        const_parser: &ConstantParser,
        fid: i64,
        bid: i64,
        iid: i64,
        instruction: &LLVMInstruction,
    ) -> Result<(), String> {
        if self.last_fid != fid {
            self.vreg_map.clear();
            self.backlog.clear();
            self.last_fid = fid;
        }

        self.vreg_map.entry(bid).or_insert_with(HashMap::new);

        if let Some(name) = instruction.try_get_result() {
            let map = self
                .vreg_map
                .get_mut(&bid)
                .expect("vreg map for a local block does not exist!");
            map.insert(name.to_string(), iid);
        }

        // get all instruction's operands
        match instruction {
            // binary instructions
            LLVMInstruction::Add(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand0());
                self.update_source(const_parser, fid, bid, iid, instr.get_operand1());
            }
            LLVMInstruction::Sub(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand0());
                self.update_source(const_parser, fid, bid, iid, instr.get_operand1());
            }
            LLVMInstruction::Mul(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand0());
                self.update_source(const_parser, fid, bid, iid, instr.get_operand1());
            }
            LLVMInstruction::UDiv(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand0());
                self.update_source(const_parser, fid, bid, iid, instr.get_operand1());
            }
            LLVMInstruction::SDiv(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand0());
                self.update_source(const_parser, fid, bid, iid, instr.get_operand1());
            }
            LLVMInstruction::URem(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand0());
                self.update_source(const_parser, fid, bid, iid, instr.get_operand1());
            }
            LLVMInstruction::SRem(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand0());
                self.update_source(const_parser, fid, bid, iid, instr.get_operand1());
            }
            LLVMInstruction::And(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand0());
                self.update_source(const_parser, fid, bid, iid, instr.get_operand1());
            }
            LLVMInstruction::Or(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand0());
                self.update_source(const_parser, fid, bid, iid, instr.get_operand1());
            }
            LLVMInstruction::Xor(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand0());
                self.update_source(const_parser, fid, bid, iid, instr.get_operand1());
            }
            LLVMInstruction::Shl(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand0());
                self.update_source(const_parser, fid, bid, iid, instr.get_operand1());
            }
            LLVMInstruction::LShr(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand0());
                self.update_source(const_parser, fid, bid, iid, instr.get_operand1());
            }
            LLVMInstruction::AShr(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand0());
                self.update_source(const_parser, fid, bid, iid, instr.get_operand1());
            }
            LLVMInstruction::FAdd(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand0());
                self.update_source(const_parser, fid, bid, iid, instr.get_operand1());
            }
            LLVMInstruction::FSub(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand0());
                self.update_source(const_parser, fid, bid, iid, instr.get_operand1());
            }
            LLVMInstruction::FMul(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand0());
                self.update_source(const_parser, fid, bid, iid, instr.get_operand1());
            }
            LLVMInstruction::FDiv(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand0());
                self.update_source(const_parser, fid, bid, iid, instr.get_operand1());
            }
            LLVMInstruction::FRem(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand0());
                self.update_source(const_parser, fid, bid, iid, instr.get_operand1());
            }

            // unary instructions
            LLVMInstruction::Trunc(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand());
            }
            LLVMInstruction::ZExt(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand());
            }
            LLVMInstruction::SExt(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand());
            }
            LLVMInstruction::FPTrunc(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand());
            }
            LLVMInstruction::FPExt(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand());
            }
            LLVMInstruction::FPToUI(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand());
            }
            LLVMInstruction::FPToSI(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand());
            }
            LLVMInstruction::UIToFP(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand());
            }
            LLVMInstruction::SIToFP(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand());
            }
            LLVMInstruction::PtrToInt(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand());
            }
            LLVMInstruction::IntToPtr(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand());
            }
            LLVMInstruction::BitCast(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand());
            }
            LLVMInstruction::AddrSpaceCast(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand());
            }
            LLVMInstruction::FNeg(instr) => {
                self.update_source(const_parser, fid, bid, iid, instr.get_operand());
            }

            LLVMInstruction::ExtractElement(instr) => {
                self.update_source(const_parser, fid, bid, iid, &instr.vector);
                self.update_source(const_parser, fid, bid, iid, &instr.index);
            }
            LLVMInstruction::InsertElement(instr) => {
                self.update_source(const_parser, fid, bid, iid, &instr.vector);
                self.update_source(const_parser, fid, bid, iid, &instr.element);
                self.update_source(const_parser, fid, bid, iid, &instr.index);
            }
            LLVMInstruction::ShuffleVector(instr) => {
                self.update_source(const_parser, fid, bid, iid, &instr.operand0);
                self.update_source(const_parser, fid, bid, iid, &instr.operand1);
            }
            LLVMInstruction::ExtractValue(instr) => {
                self.update_source(const_parser, fid, bid, iid, &instr.aggregate);
            }
            LLVMInstruction::InsertValue(instr) => {
                self.update_source(const_parser, fid, bid, iid, &instr.aggregate);
                self.update_source(const_parser, fid, bid, iid, &instr.element);
            }
            LLVMInstruction::Alloca(instr) => {
                self.update_source(const_parser, fid, bid, iid, &instr.num_elements);
            }
            LLVMInstruction::Load(instr) => {
                self.update_source(const_parser, fid, bid, iid, &instr.address);
            }
            LLVMInstruction::Store(instr) => {
                match &instr.address {
                    LLVMOperand::LocalOperand { name, ty: _ } => {
                        self.vreg_map
                            .entry(bid)
                            .or_insert_with(HashMap::new)
                            .insert(name.to_string(), iid);
                    }
                    LLVMOperand::ConstantOperand(constant) => match constant.as_ref() {
                        LLVMConstant::GlobalReference { name, ty: _ } => {
                            self.vreg_map
                                .entry(bid)
                                .or_insert_with(HashMap::new)
                                .insert(name.to_string(), iid);
                        }
                        _ => {}
                    },
                    LLVMOperand::MetadataOperand => {}
                };
                self.update_source(const_parser, fid, bid, iid, &instr.value);
            }
            LLVMInstruction::Fence(_instr) => { /* nothing here */ }
            LLVMInstruction::CmpXchg(instr) => {
                self.update_source(const_parser, fid, bid, iid, &instr.address);
                self.update_source(const_parser, fid, bid, iid, &instr.expected);
                self.update_source(const_parser, fid, bid, iid, &instr.replacement);
            }
            LLVMInstruction::AtomicRMW(instr) => {
                self.update_source(const_parser, fid, bid, iid, &instr.address);
                self.update_source(const_parser, fid, bid, iid, &instr.value);
            }
            LLVMInstruction::GetElementPtr(instr) => {
                self.update_source(const_parser, fid, bid, iid, &instr.address);
                for idx in &instr.indices {
                    self.update_source(const_parser, fid, bid, iid, idx);
                }
            }

            LLVMInstruction::ICmp(instr) => {
                self.update_source(const_parser, fid, bid, iid, &instr.operand0);
                self.update_source(const_parser, fid, bid, iid, &instr.operand1);
            }
            LLVMInstruction::FCmp(instr) => {
                self.update_source(const_parser, fid, bid, iid, &instr.operand0);
                self.update_source(const_parser, fid, bid, iid, &instr.operand1);
            }
            LLVMInstruction::Phi(instr) => {
                for (idx, _) in &instr.incoming_values {
                    self.update_source(const_parser, fid, bid, iid, idx);
                }
            }
            LLVMInstruction::Select(instr) => {
                self.update_source(const_parser, fid, bid, iid, &instr.condition);
                self.update_source(const_parser, fid, bid, iid, &instr.true_value);
                self.update_source(const_parser, fid, bid, iid, &instr.false_value);
            }
            LLVMInstruction::Freeze(instr) => {
                self.update_source(const_parser, fid, bid, iid, &instr.operand);
            }
            LLVMInstruction::Call(instr) => {
                for (arg, _) in &instr.arguments {
                    self.update_source(const_parser, fid, bid, iid, arg);
                }
            }
            LLVMInstruction::VAArg(instr) => {
                self.update_source(const_parser, fid, bid, iid, &instr.arg_list);
            }
            LLVMInstruction::LandingPad(_instr) => { /* no operands */ }
            LLVMInstruction::CatchPad(instr) => {
                self.update_source(const_parser, fid, bid, iid, &instr.catch_switch);
                for arg in &instr.args {
                    self.update_source(const_parser, fid, bid, iid, arg);
                }
            }
            LLVMInstruction::CleanupPad(instr) => {
                self.update_source(const_parser, fid, bid, iid, &instr.parent_pad);
                for arg in &instr.args {
                    self.update_source(const_parser, fid, bid, iid, arg);
                }
            }
        };

        Ok(())
    }

    pub fn add_terminator(
        &mut self,
        const_parser: &ConstantParser,
        fid: i64,
        bid: i64,
        iid: i64,
        instruction: &LLVMTerminator,
    ) -> Result<(), String> {
        if self.last_fid != fid {
            self.vreg_map.clear();
            self.backlog.clear();
            self.last_fid = fid;
        }

        self.vreg_map.entry(bid).or_insert_with(HashMap::new);

        // get all instruction's operands
        match instruction {
            LLVMTerminator::Ret(var) => {
                if let Some(op) = &var.return_operand {
                    self.update_source(const_parser, fid, bid, iid, op);
                }
            }
            LLVMTerminator::CleanupRet(var) => {
                self.update_source(const_parser, fid, bid, iid, &var.cleanup_pad);
            }
            LLVMTerminator::CatchRet(var) => {
                self.update_source(const_parser, fid, bid, iid, &var.catch_pad);
            }
            LLVMTerminator::Br(_var) => {}
            LLVMTerminator::CondBr(var) => {
                self.update_source(const_parser, fid, bid, iid, &var.condition);
            }
            LLVMTerminator::IndirectBr(var) => {
                self.update_source(const_parser, fid, bid, iid, &var.operand);
            }
            LLVMTerminator::CallBr(var) => {
                for (arg, _) in &var.arguments {
                    self.update_source(const_parser, fid, bid, iid, arg);
                }
            }
            LLVMTerminator::Switch(var) => {
                self.update_source(const_parser, fid, bid, iid, &var.operand);
            }
            LLVMTerminator::CatchSwitch(var) => {
                self.update_source(const_parser, fid, bid, iid, &var.parent_pad);
            }
            LLVMTerminator::Invoke(var) => {
                for (arg, _) in &var.arguments {
                    self.update_source(const_parser, fid, bid, iid, arg);
                }
            }
            LLVMTerminator::Resume(_var) => {}
            LLVMTerminator::Unreachable(_var) => {}
        }

        Ok(())
    }

    fn update_source_from_cfg(
        &mut self,
        block_pred_cfg: &HashMap<i64, Vec<i64>>,
        func_args: &HashMap<String, i64>,
        visited_blocks: &mut HashSet<i64>,
        bid: &i64,
        rel: &RelationBacklog,
    ) -> bool {
        if !block_pred_cfg.contains_key(bid) {
            return false;
        }

        let pred_blocks = block_pred_cfg.get(bid).unwrap();
        let mut success = false;

        for pred_bid in pred_blocks {
            if visited_blocks.insert(*pred_bid) {
                if *pred_bid == ENTRY_BLOCK_PRED {
                    // check func args
                    if let Some(arg_id) = func_args.get(&rel.name) {
                        let id = self.data.get_id();
                        self.data.push(DataFlowRelation {
                            id,
                            fid: rel.fid,
                            bid: rel.bid,
                            iid: rel.iid,
                            stype: STYPE_FUNC_ARG,
                            src: *arg_id,
                        });
                        success = true;
                    };
                } else if let Some(map) = self.vreg_map.get(pred_bid) {
                    if let Some(src_iid) = map.get(&rel.name) {
                        let id = self.data.get_id();
                        self.data.push(DataFlowRelation {
                            id,
                            fid: rel.fid,
                            bid: rel.bid,
                            iid: rel.iid,
                            stype: STYPE_INSTR,
                            src: *src_iid,
                        });
                        success = true;
                    } else {
                        success |= self.update_source_from_cfg(
                            block_pred_cfg,
                            func_args,
                            visited_blocks,
                            pred_bid,
                            rel,
                        );
                    }
                }
            }
        }

        success
    }

    pub fn finalize(
        &mut self,
        fid: i64,
        block_pred_cfg: &HashMap<i64, Vec<i64>>,
        func_args: &HashMap<String, i64>,
        globals: &HashMap<String, i64>,
    ) -> Result<(), String> {
        if self.last_fid != fid {
            return Err(format!(
                "Error: finalize is called with wrong function id: {} != {}",
                self.last_fid, fid
            ));
        }

        let backlog = mem::take(&mut self.backlog);
        backlog.iter().for_each(|el| {
            let mut visited_blocks = HashSet::new();
            if !self.update_source_from_cfg(
                block_pred_cfg,
                func_args,
                &mut visited_blocks,
                &el.bid,
                el,
            ) && el.is_glob_var
            {
                if let Some(glob_var_id) = globals.get(&el.name) {
                    let id = self.data.get_id();
                    self.data.push(DataFlowRelation {
                        id,
                        fid: el.fid,
                        bid: el.bid,
                        iid: el.iid,
                        stype: STYPE_GLOBAL,
                        src: *glob_var_id,
                    });
                }
            }
        });

        self.vreg_map.clear();
        self.last_fid = -1;
        Ok(())
    }

    pub fn write_files(&self, dir: &str) -> Result<(), String> {
        fact_create(dir, &self.data.name, &self.data.as_string(";"))?;

        Ok(())
    }
}
