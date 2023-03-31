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

use either::Either;
use std::string::ToString;

use llvm_ir::instruction::Instruction as LLVMInstruction;
use llvm_ir::instruction::{BinaryOp, HasResult, UnaryOp};
use llvm_ir::operand::Operand as LLVMOperand;
use llvm_ir::terminator::Terminator as LLVMTerminator;
use llvm_ir::types::Typed;
use llvm_ir::Module as LLVMModule;

use crate::common::{fact_create, FactContainer, ToStrArray};
use crate::constants::ConstantParser;
use crate::impl_tostring;
use crate::types::TypeParser;

#[derive(Debug, Clone)]
pub struct Operand {
    id: i64,
    name: String,
    family: String,
    family_id: i64,
}

impl_tostring!(Operand);

impl ToStrArray for Operand {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.name.clone(),
            self.family.clone(),
            self.family_id.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct OperandLocal {
    id: i64,
    name: String,
    tid: i64, // type id
}

impl_tostring!(OperandLocal);

impl ToStrArray for OperandLocal {
    fn to_array(&self) -> Vec<String> {
        vec![self.id.to_string(), self.name.clone(), self.tid.to_string()]
    }
}

#[derive(Debug, Clone)]
pub struct BinaryInstruction {
    id: i64,
    op0: i64,
    op1: i64,
    dest: String,
}

impl_tostring!(BinaryInstruction);

impl ToStrArray for BinaryInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.op0.to_string(),
            self.op1.to_string(),
            self.dest.clone(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct UnaryInstruction {
    id: i64,
    op: i64,
    tid: i64,
    dest: String,
}

impl_tostring!(UnaryInstruction);

impl ToStrArray for UnaryInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.op.to_string(),
            self.tid.to_string(),
            self.dest.clone(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct CmpInstruction {
    id: i64,
    predicate: String,
    op0: i64,
    op1: i64,
    dest: String,
}

impl_tostring!(CmpInstruction);

impl ToStrArray for CmpInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.predicate.clone(),
            self.op0.to_string(),
            self.op1.to_string(),
            self.dest.clone(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct SelectInstruction {
    id: i64,
    cond: i64,
    true_op: i64,
    false_op: i64,
    dest: String,
}

impl_tostring!(SelectInstruction);

impl ToStrArray for SelectInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.cond.to_string(),
            self.true_op.to_string(),
            self.false_op.to_string(),
            self.dest.clone(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct AllocaInstruction {
    id: i64,
    tid: i64, // allocated type
    num: i64, // num elements, Instruction
    dest: String,
    alignment: u32,
}

impl_tostring!(AllocaInstruction);

impl ToStrArray for AllocaInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.tid.to_string(),
            self.num.to_string(),
            self.dest.clone(),
            self.alignment.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct LoadInstruction {
    id: i64,
    addr: i64,
    dest: String,
    volatile: bool,
    alignment: u32,
}

impl_tostring!(LoadInstruction);

impl ToStrArray for LoadInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.addr.to_string(),
            self.dest.clone(),
            self.volatile.to_string(),
            self.alignment.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct StoreInstruction {
    id: i64,
    addr: i64,
    value: i64,
    volatile: bool,
    alignment: u32,
}

impl_tostring!(StoreInstruction);

impl ToStrArray for StoreInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.addr.to_string(),
            self.value.to_string(),
            self.volatile.to_string(),
            self.alignment.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct CmpXchgInstruction {
    id: i64,
    addr: i64,
    expected: i64,
    replacement: i64,
    dest: String,
    volatile: bool,
    f_mem_ord: String,
    weak: bool,
}

impl_tostring!(CmpXchgInstruction);

impl ToStrArray for CmpXchgInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.addr.to_string(),
            self.expected.to_string(),
            self.replacement.to_string(),
            self.dest.clone(),
            self.volatile.to_string(),
            self.f_mem_ord.to_string(),
            self.weak.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct AtomicRMWInstruction {
    id: i64,
    op: String,
    addr: i64,
    value: i64,
    dest: String,
    volatile: bool,
}

impl_tostring!(AtomicRMWInstruction);

impl ToStrArray for AtomicRMWInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.op.clone(),
            self.addr.to_string(),
            self.value.to_string(),
            self.dest.clone(),
            self.volatile.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct GEPInstruction {
    id: i64,
    addr: i64,
    indices_num: i64,
    dest: String,
    in_bounds: bool,
}

impl_tostring!(GEPInstruction);

impl ToStrArray for GEPInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.addr.to_string(),
            self.indices_num.to_string(),
            self.dest.clone(),
            self.in_bounds.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct ElementOperand {
    id: i64,
    pid: i64,
    oid: i64,
}

impl_tostring!(ElementOperand);

impl ToStrArray for ElementOperand {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.pid.to_string(),
            self.oid.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct ExtractElementInstruction {
    id: i64,
    vec: i64,
    idx: i64,
    dest: String,
}

impl_tostring!(ExtractElementInstruction);

impl ToStrArray for ExtractElementInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.vec.to_string(),
            self.idx.to_string(),
            self.dest.clone(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct InsertElementInstruction {
    id: i64,
    vec: i64,
    el: i64,
    idx: i64,
    dest: String,
}

impl_tostring!(InsertElementInstruction);

impl ToStrArray for InsertElementInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.vec.to_string(),
            self.el.to_string(),
            self.idx.to_string(),
            self.dest.clone(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct ShuffleVectorInstruction {
    id: i64,
    op0: i64,
    op1: i64,
    dest: String,
    mask: i64, // const id
}

impl_tostring!(ShuffleVectorInstruction);

impl ToStrArray for ShuffleVectorInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.op0.to_string(),
            self.op1.to_string(),
            self.dest.clone(),
            self.mask.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct ExtractValueInstruction {
    id: i64,
    aggr: i64,
    indices_num: i64,
    dest: String,
}

impl_tostring!(ExtractValueInstruction);

impl ToStrArray for ExtractValueInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.aggr.to_string(),
            self.indices_num.to_string(),
            self.dest.clone(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct InsertExtractValueIdx {
    id: i64,
    pid: i64,
    value: u32,
}

impl_tostring!(InsertExtractValueIdx);

impl ToStrArray for InsertExtractValueIdx {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.pid.to_string(),
            self.value.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct InsertValueInstruction {
    id: i64,
    aggr: i64,
    el: i64,
    indices_num: i64,
    dest: String,
}

impl_tostring!(InsertValueInstruction);

impl ToStrArray for InsertValueInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.aggr.to_string(),
            self.el.to_string(),
            self.indices_num.to_string(),
            self.dest.clone(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct CallInstruction {
    id: i64,
    func: i64,
    arg_num: i64,
    dest: String,
    tail_call: bool,
}

impl_tostring!(CallInstruction);

impl ToStrArray for CallInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.func.to_string(),
            self.arg_num.to_string(),
            self.dest.clone(),
            self.tail_call.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct CallOperand {
    id: i64,
    pid: i64,
    oid: i64,
}

impl_tostring!(CallOperand);

impl ToStrArray for CallOperand {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.pid.to_string(),
            self.oid.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct PhiInstruction {
    id: i64,
    tid: i64,
    dest: String,
    values_num: i64,
}

impl_tostring!(PhiInstruction);

impl ToStrArray for PhiInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.tid.to_string(),
            self.dest.clone(),
            self.values_num.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct PhiValue {
    id: i64,
    pid: i64,
    oid: i64,
    dest: String,
}

impl_tostring!(PhiValue);

impl ToStrArray for PhiValue {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.pid.to_string(),
            self.oid.to_string(),
            self.dest.clone(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct LandingPadInstruction {
    id: i64,
    tid: i64,
    dest: String,
    cleanup: bool,
}

impl_tostring!(LandingPadInstruction);

impl ToStrArray for LandingPadInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.tid.to_string(),
            self.dest.clone(),
            self.cleanup.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct CatchCleanupPadInstruction {
    id: i64,
    oid: i64,
    arg_num: i64,
    dest: String,
}

impl_tostring!(CatchCleanupPadInstruction);

impl ToStrArray for CatchCleanupPadInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.oid.to_string(),
            self.arg_num.to_string(),
            self.dest.clone(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct VAArgInstruction {
    id: i64,
    arg_list: i64,
    tid: i64,
    dest: String,
}

impl_tostring!(VAArgInstruction);

impl ToStrArray for VAArgInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.arg_list.to_string(),
            self.tid.to_string(),
            self.dest.clone(),
        ]
    }
}

// Terminator instructions

#[derive(Debug, Clone)]
pub struct CleanupCatchRetInstruction {
    id: i64,
    op: i64,
    dest: String,
}

impl_tostring!(CleanupCatchRetInstruction);

impl ToStrArray for CleanupCatchRetInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.op.to_string(),
            self.dest.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct BrInstruction {
    id: i64,
    dest: String,
}

impl_tostring!(BrInstruction);

impl ToStrArray for BrInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![self.id.to_string(), self.dest.clone()]
    }
}

#[derive(Debug, Clone)]
pub struct IndirectBrInstruction {
    id: i64,
    op: i64,
    num_dest: i64,
}

impl_tostring!(IndirectBrInstruction);

impl ToStrArray for IndirectBrInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.op.to_string(),
            self.num_dest.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct NameElement {
    id: i64,
    pid: i64,
    dest: String,
}

impl_tostring!(NameElement);

impl ToStrArray for NameElement {
    fn to_array(&self) -> Vec<String> {
        vec![self.id.to_string(), self.pid.to_string(), self.dest.clone()]
    }
}

#[derive(Debug, Clone)]
pub struct CondBrInstruction {
    id: i64,
    op: i64,
    true_dest: String,
    false_dest: String,
}

impl_tostring!(CondBrInstruction);

impl ToStrArray for CondBrInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.op.to_string(),
            self.true_dest.to_string(),
            self.false_dest.clone(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct CallBrInvokeInstruction {
    id: i64,
    func: i64,
    arg_num: i64,
    result: String,
    return_label: String,
    other: String,
}

impl_tostring!(CallBrInvokeInstruction);

impl ToStrArray for CallBrInvokeInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.func.to_string(),
            self.arg_num.to_string(),
            self.result.clone(),
            self.return_label.clone(),
            self.other.clone(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct SwitchInstruction {
    id: i64,
    op: i64,
    default_dest: String,
    num_dest: i64,
}

impl_tostring!(SwitchInstruction);

impl ToStrArray for SwitchInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.op.to_string(),
            self.default_dest.clone(),
            self.num_dest.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct SwitchDest {
    id: i64,
    pid: i64,
    cid: i64, // const id
    name: String,
}

impl_tostring!(SwitchDest);

impl ToStrArray for SwitchDest {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.pid.to_string(),
            self.cid.to_string(),
            self.name.clone(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct CatchSwitchInstruction {
    id: i64,
    ppad: i64,
    default_dest: String,
    result: String,
    num_handlers: i64,
}

impl_tostring!(CatchSwitchInstruction);

impl ToStrArray for CatchSwitchInstruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.ppad.to_string(),
            self.default_dest.clone(),
            self.result.clone(),
            self.num_handlers.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct Instruction {
    pub id: i64,
    pub bid: i64,
    pub vreg: String,
    pub opcode: String,
    pub atomic: bool,
    pub binary: bool,
    pub unary: bool,
    pub family_id: i64,
}

impl_tostring!(Instruction);

impl ToStrArray for Instruction {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.bid.to_string(),
            self.vreg.clone(),
            self.opcode.clone(),
            self.atomic.to_string(),
            self.binary.to_string(),
            self.unary.to_string(),
            self.family_id.to_string(),
        ]
    }
}

pub struct InstructionParser {
    instructions: FactContainer<Instruction>,

    operands: FactContainer<Operand>,
    locals: FactContainer<OperandLocal>,

    binaries: FactContainer<BinaryInstruction>,
    unaries: FactContainer<UnaryInstruction>,
    cmps: FactContainer<CmpInstruction>,
    selects: FactContainer<SelectInstruction>,
    allocas: FactContainer<AllocaInstruction>,
    loads: FactContainer<LoadInstruction>,
    stores: FactContainer<StoreInstruction>,
    cmpxchgs: FactContainer<CmpXchgInstruction>,
    atomicrmws: FactContainer<AtomicRMWInstruction>,
    geps: FactContainer<GEPInstruction>,
    gep_index: FactContainer<ElementOperand>,
    extractelements: FactContainer<ExtractElementInstruction>,
    insertelements: FactContainer<InsertElementInstruction>,
    shufflevectors: FactContainer<ShuffleVectorInstruction>,
    extractvalues: FactContainer<ExtractValueInstruction>,
    extractvalue_index: FactContainer<InsertExtractValueIdx>,
    insertvalues: FactContainer<InsertValueInstruction>,
    insertvalue_index: FactContainer<InsertExtractValueIdx>,
    calls: FactContainer<CallInstruction>,
    call_ops: FactContainer<CallOperand>,
    phis: FactContainer<PhiInstruction>,
    phi_values: FactContainer<PhiValue>,
    landingpads: FactContainer<LandingPadInstruction>,
    catchpads: FactContainer<CatchCleanupPadInstruction>,
    catchpad_arg: FactContainer<ElementOperand>,
    cleanuppads: FactContainer<CatchCleanupPadInstruction>,
    cleanuppad_arg: FactContainer<ElementOperand>,
    vaargs: FactContainer<VAArgInstruction>,

    // terminator instructions
    br: FactContainer<BrInstruction>,
    condbr: FactContainer<CondBrInstruction>,
    switch: FactContainer<SwitchInstruction>,
    switch_dest: FactContainer<SwitchDest>,
    indirectbr: FactContainer<IndirectBrInstruction>,
    indirectbr_dest: FactContainer<NameElement>,
    invoke: FactContainer<CallBrInvokeInstruction>,
    invoke_arg: FactContainer<CallOperand>,
    cleanupret: FactContainer<CleanupCatchRetInstruction>,
    catchret: FactContainer<CleanupCatchRetInstruction>,
    catchswitch: FactContainer<CatchSwitchInstruction>,
    catchswitch_handlers: FactContainer<NameElement>,
    callbr: FactContainer<CallBrInvokeInstruction>,
    callbr_arg: FactContainer<CallOperand>,
}

impl InstructionParser {
    pub fn new() -> Result<Self, String> {
        Ok(InstructionParser {
            instructions: FactContainer::new("instruction"),

            operands: FactContainer::new("operand"),
            locals: FactContainer::new("operand_local"),

            binaries: FactContainer::new("instruction_binary"),
            unaries: FactContainer::new("instruction_unary"),
            cmps: FactContainer::new("instruction_cmp"),
            selects: FactContainer::new("instruction_select"),
            allocas: FactContainer::new("instruction_alloca"),
            loads: FactContainer::new("instruction_load"),
            stores: FactContainer::new("instruction_store"),
            cmpxchgs: FactContainer::new("instruction_cmpxchg"),
            atomicrmws: FactContainer::new("instruction_atomicrmw"),
            geps: FactContainer::new("instruction_gep"),
            gep_index: FactContainer::new("instruction_gep_index"),
            extractelements: FactContainer::new("instruction_extractelement"),
            insertelements: FactContainer::new("instruction_insertelement"),
            shufflevectors: FactContainer::new("instruction_shufflevector"),
            extractvalues: FactContainer::new("instruction_extractvalue"),
            extractvalue_index: FactContainer::new("instruction_extractvalue_index"),
            insertvalues: FactContainer::new("instruction_insertvalue"),
            insertvalue_index: FactContainer::new("instruction_insertvalue_index"),
            calls: FactContainer::new("instruction_call"),
            call_ops: FactContainer::new("instruction_call_op"),
            phis: FactContainer::new("instruction_phi"),
            phi_values: FactContainer::new("instruction_phi_value"),
            landingpads: FactContainer::new("instruction_landingpad"),
            catchpads: FactContainer::new("instruction_catchpad"),
            catchpad_arg: FactContainer::new("instruction_catchpad_arg"),
            cleanuppads: FactContainer::new("instruction_cleanuppad"),
            cleanuppad_arg: FactContainer::new("instruction_cleanuppad_arg"),
            vaargs: FactContainer::new("instruction_vaarg"),

            br: FactContainer::new("instruction_br"),
            condbr: FactContainer::new("instruction_condbr"),
            switch: FactContainer::new("instruction_switch"),
            switch_dest: FactContainer::new("instruction_switch_dest"),
            indirectbr: FactContainer::new("instruction_indirectbr"),
            indirectbr_dest: FactContainer::new("instruction_indirectbr_dest"),
            invoke: FactContainer::new("instruction_invoke"),
            invoke_arg: FactContainer::new("instruction_invoke_arg"),
            cleanupret: FactContainer::new("instruction_cleanupret"),
            catchret: FactContainer::new("instruction_catchret"),
            catchswitch: FactContainer::new("instruction_catchswitch"),
            catchswitch_handlers: FactContainer::new("instruction_catchswitch_handler"),
            callbr: FactContainer::new("instruction_callbr"),
            callbr_arg: FactContainer::new("instruction_callbr_arg"),
        })
    }

    pub fn parse_operand(
        &mut self,
        module: &LLVMModule,
        type_parser: &mut TypeParser,
        const_parser: &mut ConstantParser,
        op: &LLVMOperand,
    ) -> Result<i64, String> {
        let opid = self.operands.get_id();

        let (family, family_id, name) = match op {
            LLVMOperand::LocalOperand { name, ty } => {
                let sub_id = self.locals.get_id();

                let tid = type_parser.parse(module, ty)?;
                self.locals.push(OperandLocal {
                    id: sub_id,
                    name: name.to_string(),
                    tid,
                });
                ("local", sub_id, name.to_string())
            }
            LLVMOperand::ConstantOperand(constant) => {
                let cid = const_parser.parse(module, type_parser, constant)?;
                ("constant", cid, constant.to_string())
            }
            LLVMOperand::MetadataOperand => ("metadata", -1, "".to_string()),
        };

        self.operands.push(Operand {
            id: opid,
            name,
            family: family.to_string(),
            family_id,
        });

        Ok(opid)
    }

    fn parse_binary<T: BinaryOp + HasResult>(
        &mut self,
        module: &LLVMModule,
        type_parser: &mut TypeParser,
        const_parser: &mut ConstantParser,
        instruction: &T,
    ) -> Result<i64, String> {
        let opid = self.binaries.get_id();

        let op0 = self.parse_operand(
            module,
            type_parser,
            const_parser,
            instruction.get_operand0(),
        )?;
        let op1 = self.parse_operand(
            module,
            type_parser,
            const_parser,
            instruction.get_operand1(),
        )?;
        self.binaries.push(BinaryInstruction {
            id: opid,
            op0,
            op1,
            dest: instruction.get_result().to_string(),
        });
        Ok(opid)
    }

    fn parse_unary<T: UnaryOp + Typed + HasResult>(
        &mut self,
        module: &LLVMModule,
        type_parser: &mut TypeParser,
        const_parser: &mut ConstantParser,
        instruction: &T,
    ) -> Result<i64, String> {
        let opid = self.unaries.get_id();

        let op =
            self.parse_operand(module, type_parser, const_parser, instruction.get_operand())?;

        // Typed::get_type requires the argument Types but it is not used
        // by UnaryOp
        let tid = type_parser.parse(module, &instruction.get_type(&module.types))?;
        self.unaries.push(UnaryInstruction {
            id: opid,
            op,
            tid,
            dest: instruction.get_result().to_string(),
        });
        Ok(opid)
    }

    pub fn parse(
        &mut self,
        module: &LLVMModule,
        type_parser: &mut TypeParser,
        const_parser: &mut ConstantParser,
        bid: i64,
        instruction: &LLVMInstruction,
    ) -> Result<i64, String> {
        let iid = self.instructions.get_id();

        let vreg = if let Some(name) = instruction.try_get_result() {
            name.to_string()
        } else {
            "".to_string()
        };

        let (opcode, instr_id) = match instruction {
            LLVMInstruction::Add(instr) => {
                let inst_id = self.parse_binary(module, type_parser, const_parser, instr)?;
                ("add", inst_id)
            }
            LLVMInstruction::Sub(instr) => {
                let inst_id = self.parse_binary(module, type_parser, const_parser, instr)?;
                ("sub", inst_id)
            }
            LLVMInstruction::Mul(instr) => {
                let inst_id = self.parse_binary(module, type_parser, const_parser, instr)?;
                ("mul", inst_id)
            }
            LLVMInstruction::UDiv(instr) => {
                let inst_id = self.parse_binary(module, type_parser, const_parser, instr)?;
                ("udiv", inst_id)
            }
            LLVMInstruction::SDiv(instr) => {
                let inst_id = self.parse_binary(module, type_parser, const_parser, instr)?;
                ("sdiv", inst_id)
            }
            LLVMInstruction::URem(instr) => {
                let inst_id = self.parse_binary(module, type_parser, const_parser, instr)?;
                ("urem", inst_id)
            }
            LLVMInstruction::SRem(instr) => {
                let inst_id = self.parse_binary(module, type_parser, const_parser, instr)?;
                ("srem", inst_id)
            }
            LLVMInstruction::And(instr) => {
                let inst_id = self.parse_binary(module, type_parser, const_parser, instr)?;
                ("and", inst_id)
            }
            LLVMInstruction::Or(instr) => {
                let inst_id = self.parse_binary(module, type_parser, const_parser, instr)?;
                ("or", inst_id)
            }
            LLVMInstruction::Xor(instr) => {
                let inst_id = self.parse_binary(module, type_parser, const_parser, instr)?;
                ("xor", inst_id)
            }
            LLVMInstruction::Shl(instr) => {
                let inst_id = self.parse_binary(module, type_parser, const_parser, instr)?;
                ("shl", inst_id)
            }
            LLVMInstruction::LShr(instr) => {
                let inst_id = self.parse_binary(module, type_parser, const_parser, instr)?;
                ("lshr", inst_id)
            }
            LLVMInstruction::AShr(instr) => {
                let inst_id = self.parse_binary(module, type_parser, const_parser, instr)?;
                ("ashr", inst_id)
            }
            LLVMInstruction::FAdd(instr) => {
                let inst_id = self.parse_binary(module, type_parser, const_parser, instr)?;
                ("fadd", inst_id)
            }
            LLVMInstruction::FSub(instr) => {
                let inst_id = self.parse_binary(module, type_parser, const_parser, instr)?;
                ("fsub", inst_id)
            }
            LLVMInstruction::FMul(instr) => {
                let inst_id = self.parse_binary(module, type_parser, const_parser, instr)?;
                ("fmul", inst_id)
            }
            LLVMInstruction::FDiv(instr) => {
                let inst_id = self.parse_binary(module, type_parser, const_parser, instr)?;
                ("fdiv", inst_id)
            }
            LLVMInstruction::FRem(instr) => {
                let inst_id = self.parse_binary(module, type_parser, const_parser, instr)?;
                ("frem", inst_id)
            }
            LLVMInstruction::FNeg(instr) => {
                let inst_id = self.parse_unary(module, type_parser, const_parser, instr)?;
                ("fneg", inst_id)
            }
            LLVMInstruction::ExtractElement(instr) => {
                let inst_id = self.extractelements.get_id();

                let vec = self.parse_operand(module, type_parser, const_parser, &instr.vector)?;
                let idx = self.parse_operand(module, type_parser, const_parser, &instr.index)?;
                self.extractelements.push(ExtractElementInstruction {
                    id: inst_id,
                    vec,
                    idx,
                    dest: instr.dest.to_string(),
                });
                ("extractelement", inst_id)
            }
            LLVMInstruction::InsertElement(instr) => {
                let inst_id = self.insertelements.get_id();

                let vec = self.parse_operand(module, type_parser, const_parser, &instr.vector)?;
                let el = self.parse_operand(module, type_parser, const_parser, &instr.element)?;
                let idx = self.parse_operand(module, type_parser, const_parser, &instr.index)?;
                self.insertelements.push(InsertElementInstruction {
                    id: inst_id,
                    vec,
                    el,
                    idx,
                    dest: instr.dest.to_string(),
                });
                ("insertelement", inst_id)
            }
            LLVMInstruction::ShuffleVector(instr) => {
                let inst_id = self.shufflevectors.get_id();

                let op0 = self.parse_operand(module, type_parser, const_parser, &instr.operand0)?;
                let op1 = self.parse_operand(module, type_parser, const_parser, &instr.operand1)?;
                let mask = const_parser.parse(module, type_parser, &instr.mask)?;
                self.shufflevectors.push(ShuffleVectorInstruction {
                    id: inst_id,
                    op0,
                    op1,
                    dest: instr.dest.to_string(),
                    mask,
                });
                ("shufflevector", inst_id)
            }
            LLVMInstruction::ExtractValue(instr) => {
                let inst_id = self.extractvalues.get_id();

                let aggr =
                    self.parse_operand(module, type_parser, const_parser, &instr.aggregate)?;
                self.extractvalues.push(ExtractValueInstruction {
                    id: inst_id,
                    aggr,
                    indices_num: instr.indices.len() as i64,
                    dest: instr.dest.to_string(),
                });
                for idx in &instr.indices {
                    let sub_id = self.extractvalue_index.get_id();

                    self.extractvalue_index.push(InsertExtractValueIdx {
                        id: sub_id,
                        pid: inst_id,
                        value: *idx,
                    });
                }
                ("extractvalue", inst_id)
            }
            LLVMInstruction::InsertValue(instr) => {
                let inst_id = self.insertvalues.get_id();

                let aggr =
                    self.parse_operand(module, type_parser, const_parser, &instr.aggregate)?;
                let el = self.parse_operand(module, type_parser, const_parser, &instr.element)?;
                self.insertvalues.push(InsertValueInstruction {
                    id: inst_id,
                    aggr,
                    el,
                    indices_num: instr.indices.len() as i64,
                    dest: instr.dest.to_string(),
                });
                for idx in &instr.indices {
                    let sub_id = self.insertvalue_index.get_id();

                    self.insertvalue_index.push(InsertExtractValueIdx {
                        id: sub_id,
                        pid: inst_id,
                        value: *idx,
                    });
                }
                ("insertvalue", inst_id)
            }
            LLVMInstruction::Alloca(instr) => {
                let inst_id = self.allocas.get_id();

                let tid = type_parser.parse(module, &instr.allocated_type)?;
                let num =
                    self.parse_operand(module, type_parser, const_parser, &instr.num_elements)?;
                self.allocas.push(AllocaInstruction {
                    id: inst_id,
                    tid,
                    num,
                    dest: instr.dest.to_string(),
                    alignment: instr.alignment,
                });
                ("alloca", inst_id)
            }
            LLVMInstruction::Load(instr) => {
                let inst_id = self.loads.get_id();

                let addr = self.parse_operand(module, type_parser, const_parser, &instr.address)?;
                self.loads.push(LoadInstruction {
                    id: inst_id,
                    addr,
                    dest: instr.dest.to_string(),
                    volatile: instr.volatile,
                    alignment: instr.alignment,
                });
                ("load", inst_id)
            }
            LLVMInstruction::Store(instr) => {
                let inst_id = self.stores.get_id();

                let addr = self.parse_operand(module, type_parser, const_parser, &instr.address)?;
                let val = self.parse_operand(module, type_parser, const_parser, &instr.value)?;
                self.stores.push(StoreInstruction {
                    id: inst_id,
                    addr,
                    value: val,
                    volatile: instr.volatile,
                    alignment: instr.alignment,
                });
                ("store", inst_id)
            }
            LLVMInstruction::Fence(_instr) => ("fence", -1),
            LLVMInstruction::CmpXchg(instr) => {
                let inst_id = self.cmpxchgs.get_id();

                let addr = self.parse_operand(module, type_parser, const_parser, &instr.address)?;
                let exp = self.parse_operand(module, type_parser, const_parser, &instr.expected)?;
                let repl =
                    self.parse_operand(module, type_parser, const_parser, &instr.replacement)?;
                self.cmpxchgs.push(CmpXchgInstruction {
                    id: inst_id,
                    addr,
                    expected: exp,
                    replacement: repl,
                    dest: instr.dest.to_string(),
                    volatile: instr.volatile,
                    f_mem_ord: instr.failure_memory_ordering.to_string(),
                    weak: instr.weak,
                });
                ("cmpxchg", inst_id)
            }
            LLVMInstruction::AtomicRMW(instr) => {
                let inst_id = self.atomicrmws.get_id();

                let addr = self.parse_operand(module, type_parser, const_parser, &instr.address)?;
                let value = self.parse_operand(module, type_parser, const_parser, &instr.value)?;
                self.atomicrmws.push(AtomicRMWInstruction {
                    id: inst_id,
                    op: instr.operation.to_string(),
                    addr,
                    value,
                    dest: instr.dest.to_string(),
                    volatile: instr.volatile,
                });
                ("atomicrmw", inst_id)
            }
            LLVMInstruction::GetElementPtr(instr) => {
                let inst_id = self.geps.get_id();

                let addr = self.parse_operand(module, type_parser, const_parser, &instr.address)?;
                self.geps.push(GEPInstruction {
                    id: inst_id,
                    addr,
                    indices_num: instr.indices.len() as i64,
                    dest: instr.dest.to_string(),
                    in_bounds: instr.in_bounds,
                });
                for idx in &instr.indices {
                    let sub_id = self.gep_index.get_id();

                    let oid = self.parse_operand(module, type_parser, const_parser, idx)?;
                    self.gep_index.push(ElementOperand {
                        id: sub_id,
                        pid: inst_id,
                        oid,
                    });
                }
                ("getelementptr", inst_id)
            }
            LLVMInstruction::Trunc(instr) => {
                let inst_id = self.parse_unary(module, type_parser, const_parser, instr)?;
                ("trunc", inst_id)
            }
            LLVMInstruction::ZExt(instr) => {
                let inst_id = self.parse_unary(module, type_parser, const_parser, instr)?;
                ("zext", inst_id)
            }
            LLVMInstruction::SExt(instr) => {
                let inst_id = self.parse_unary(module, type_parser, const_parser, instr)?;
                ("sext", inst_id)
            }
            LLVMInstruction::FPTrunc(instr) => {
                let inst_id = self.parse_unary(module, type_parser, const_parser, instr)?;
                ("fptrunc", inst_id)
            }
            LLVMInstruction::FPExt(instr) => {
                let inst_id = self.parse_unary(module, type_parser, const_parser, instr)?;
                ("fpext", inst_id)
            }
            LLVMInstruction::FPToUI(instr) => {
                let inst_id = self.parse_unary(module, type_parser, const_parser, instr)?;
                ("fptoui", inst_id)
            }
            LLVMInstruction::FPToSI(instr) => {
                let inst_id = self.parse_unary(module, type_parser, const_parser, instr)?;
                ("fptosi", inst_id)
            }
            LLVMInstruction::UIToFP(instr) => {
                let inst_id = self.parse_unary(module, type_parser, const_parser, instr)?;
                ("uitofp", inst_id)
            }
            LLVMInstruction::SIToFP(instr) => {
                let inst_id = self.parse_unary(module, type_parser, const_parser, instr)?;
                ("sitofp", inst_id)
            }
            LLVMInstruction::PtrToInt(instr) => {
                let inst_id = self.parse_unary(module, type_parser, const_parser, instr)?;
                ("ptrtoint", inst_id)
            }
            LLVMInstruction::IntToPtr(instr) => {
                let inst_id = self.parse_unary(module, type_parser, const_parser, instr)?;
                ("inttoptr", inst_id)
            }
            LLVMInstruction::BitCast(instr) => {
                let inst_id = self.parse_unary(module, type_parser, const_parser, instr)?;
                ("bitcast", inst_id)
            }
            LLVMInstruction::AddrSpaceCast(instr) => {
                let inst_id = self.parse_unary(module, type_parser, const_parser, instr)?;
                ("addrspacecast", inst_id)
            }
            LLVMInstruction::ICmp(instr) => {
                let inst_id = self.cmps.get_id();

                let op0 = self.parse_operand(module, type_parser, const_parser, &instr.operand0)?;
                let op1 = self.parse_operand(module, type_parser, const_parser, &instr.operand1)?;
                self.cmps.push(CmpInstruction {
                    id: inst_id,
                    predicate: instr.predicate.to_string(),
                    op0,
                    op1,
                    dest: instr.dest.to_string(),
                });
                ("icmp", inst_id)
            }
            LLVMInstruction::FCmp(instr) => {
                let inst_id = self.cmps.get_id();

                let op0 = self.parse_operand(module, type_parser, const_parser, &instr.operand0)?;
                let op1 = self.parse_operand(module, type_parser, const_parser, &instr.operand1)?;
                self.cmps.push(CmpInstruction {
                    id: inst_id,
                    predicate: instr.predicate.to_string(),
                    op0,
                    op1,
                    dest: instr.dest.to_string(),
                });
                ("fcmp", inst_id)
            }
            LLVMInstruction::Phi(instr) => {
                let inst_id = self.phis.get_id();

                let tid = type_parser.parse(module, &instr.to_type)?;
                self.phis.push(PhiInstruction {
                    id: inst_id,
                    tid,
                    dest: instr.dest.to_string(),
                    values_num: instr.incoming_values.len() as i64,
                });
                for (idx, nm) in &instr.incoming_values {
                    let sub_id = self.phi_values.get_id();

                    let oid = self.parse_operand(module, type_parser, const_parser, idx)?;
                    self.phi_values.push(PhiValue {
                        id: sub_id,
                        pid: inst_id,
                        oid,
                        dest: nm.to_string(),
                    });
                }
                ("phi", inst_id)
            }
            LLVMInstruction::Select(instr) => {
                let inst_id = self.selects.get_id();

                let cond =
                    self.parse_operand(module, type_parser, const_parser, &instr.condition)?;
                let true_val =
                    self.parse_operand(module, type_parser, const_parser, &instr.true_value)?;
                let false_val =
                    self.parse_operand(module, type_parser, const_parser, &instr.false_value)?;
                self.selects.push(SelectInstruction {
                    id: inst_id,
                    cond,
                    true_op: true_val,
                    false_op: false_val,
                    dest: instr.dest.to_string(),
                });
                ("select", inst_id)
            }
            LLVMInstruction::Freeze(instr) => {
                let inst_id = self.parse_unary(module, type_parser, const_parser, instr)?;
                ("freeze", inst_id)
            }
            LLVMInstruction::Call(instr) => {
                let inst_id = self.calls.get_id();

                let func = match &instr.function {
                    Either::Left(_) => {
                        return Err(
                            "Call Instruction: InlineAssembly is not supported yet!".to_string()
                        )
                    }
                    Either::Right(op) => {
                        self.parse_operand(module, type_parser, const_parser, op)?
                    }
                };
                let name = if let Some(val) = &instr.dest {
                    val.to_string()
                } else {
                    "".to_string()
                };
                self.calls.push(CallInstruction {
                    id: inst_id,
                    func,
                    arg_num: instr.arguments.len() as i64,
                    dest: name,
                    tail_call: instr.is_tail_call,
                });

                for (arg, _) in &instr.arguments {
                    let sub_id = self.call_ops.get_id();

                    let op = self.parse_operand(module, type_parser, const_parser, arg)?;
                    self.call_ops.push(CallOperand {
                        id: sub_id,
                        pid: inst_id,
                        oid: op,
                    });
                }
                ("call", inst_id)
            }
            LLVMInstruction::VAArg(instr) => {
                let inst_id = self.vaargs.get_id();

                let arg_list =
                    self.parse_operand(module, type_parser, const_parser, &instr.arg_list)?;
                let tid = type_parser.parse(module, &instr.cur_type)?;
                self.vaargs.push(VAArgInstruction {
                    id: inst_id,
                    arg_list,
                    tid,
                    dest: instr.dest.to_string(),
                });
                ("vaarg", inst_id)
            }
            LLVMInstruction::LandingPad(instr) => {
                let inst_id = self.landingpads.get_id();

                let tid = type_parser.parse(module, &instr.result_type)?;
                self.landingpads.push(LandingPadInstruction {
                    id: inst_id,
                    tid,
                    dest: instr.dest.to_string(),
                    cleanup: instr.cleanup,
                });
                ("landingpad", inst_id)
            }
            LLVMInstruction::CatchPad(instr) => {
                let inst_id = self.catchpads.get_id();

                let oid =
                    self.parse_operand(module, type_parser, const_parser, &instr.catch_switch)?;
                self.catchpads.push(CatchCleanupPadInstruction {
                    id: inst_id,
                    oid,
                    arg_num: instr.args.len() as i64,
                    dest: instr.dest.to_string(),
                });
                for arg in &instr.args {
                    let sub_id = self.catchpad_arg.get_id();

                    let op = self.parse_operand(module, type_parser, const_parser, arg)?;
                    self.catchpad_arg.push(ElementOperand {
                        id: sub_id,
                        pid: inst_id,
                        oid: op,
                    });
                }
                ("catchpad", inst_id)
            }
            LLVMInstruction::CleanupPad(instr) => {
                let inst_id = self.cleanuppads.get_id();

                let oid =
                    self.parse_operand(module, type_parser, const_parser, &instr.parent_pad)?;
                self.cleanuppads.push(CatchCleanupPadInstruction {
                    id: inst_id,
                    oid,
                    arg_num: instr.args.len() as i64,
                    dest: instr.dest.to_string(),
                });
                for arg in &instr.args {
                    let sub_id = self.cleanuppad_arg.get_id();

                    let op = self.parse_operand(module, type_parser, const_parser, arg)?;
                    self.cleanuppad_arg.push(ElementOperand {
                        id: sub_id,
                        pid: inst_id,
                        oid: op,
                    });
                }
                ("cleanuppad", inst_id)
            }
        };

        self.instructions.push(Instruction {
            id: iid,
            bid,
            vreg,
            opcode: opcode.to_string(),
            atomic: instruction.is_atomic(),
            binary: instruction.is_binary_op(),
            unary: instruction.is_unary_op(),
            family_id: instr_id,
        });

        Ok(iid)
    }

    pub fn parse_terminator(
        &mut self,
        module: &LLVMModule,
        type_parser: &mut TypeParser,
        const_parser: &mut ConstantParser,
        bid: i64,
        term: &LLVMTerminator,
    ) -> Result<i64, String> {
        let term_id = self.instructions.get_id();

        let (opcode, instr_id) = match term {
            LLVMTerminator::Ret(var) => {
                let sub_id = if let Some(op) = &var.return_operand {
                    self.parse_operand(module, type_parser, const_parser, op)?
                } else {
                    -1
                };
                ("ret", sub_id)
            }
            LLVMTerminator::CleanupRet(var) => {
                let sub_id = self.cleanupret.get_id();
                let op = self.parse_operand(module, type_parser, const_parser, &var.cleanup_pad)?;
                let dest = if let Some(n) = &var.unwind_dest {
                    n.to_string()
                } else {
                    "".to_string()
                };
                self.cleanupret.push(CleanupCatchRetInstruction {
                    id: sub_id,
                    op,
                    dest,
                });
                ("cleanupret", sub_id)
            }
            LLVMTerminator::CatchRet(var) => {
                let sub_id = self.catchret.get_id();
                let op = self.parse_operand(module, type_parser, const_parser, &var.catch_pad)?;
                self.catchret.push(CleanupCatchRetInstruction {
                    id: sub_id,
                    op,
                    dest: var.successor.to_string(),
                });
                ("catchret", sub_id)
            }
            LLVMTerminator::Br(var) => {
                let sub_id = self.br.get_id();
                self.br.push(BrInstruction {
                    id: sub_id,
                    dest: var.dest.to_string(),
                });
                ("br", sub_id)
            }
            LLVMTerminator::CondBr(var) => {
                let sub_id = self.condbr.get_id();
                let op = self.parse_operand(module, type_parser, const_parser, &var.condition)?;
                self.condbr.push(CondBrInstruction {
                    id: sub_id,
                    op,
                    true_dest: var.true_dest.to_string(),
                    false_dest: var.false_dest.to_string(),
                });
                ("condbr", sub_id)
            }
            LLVMTerminator::IndirectBr(var) => {
                let sub_id = self.indirectbr.get_id();
                let op = self.parse_operand(module, type_parser, const_parser, &var.operand)?;
                self.indirectbr.push(IndirectBrInstruction {
                    id: sub_id,
                    op,
                    num_dest: var.possible_dests.len() as i64,
                });

                for name in &var.possible_dests {
                    let el_id = self.indirectbr_dest.get_id();
                    self.indirectbr_dest.push(NameElement {
                        id: el_id,
                        pid: sub_id,
                        dest: name.to_string(),
                    });
                }
                ("indirectbr", sub_id)
            }
            LLVMTerminator::CallBr(var) => {
                let sub_id = self.callbr.get_id();

                let func = match &var.function {
                    Either::Left(_) => {
                        return Err(
                            "Call Instruction: InlineAssembly is not supported yet!".to_string()
                        )
                    }
                    Either::Right(op) => {
                        self.parse_operand(module, type_parser, const_parser, op)?
                    }
                };

                self.callbr.push(CallBrInvokeInstruction {
                    id: sub_id,
                    func,
                    arg_num: var.arguments.len() as i64,
                    result: var.result.to_string(),
                    return_label: var.return_label.to_string(),
                    other: "".to_string(),
                });

                for (arg, _) in &var.arguments {
                    let el_id = self.callbr_arg.get_id();
                    let op = self.parse_operand(module, type_parser, const_parser, arg)?;
                    self.callbr_arg.push(CallOperand {
                        id: el_id,
                        pid: sub_id,
                        oid: op,
                    });
                }
                ("callbr", sub_id)
            }
            LLVMTerminator::Switch(var) => {
                let sub_id = self.switch.get_id();
                let op = self.parse_operand(module, type_parser, const_parser, &var.operand)?;
                self.switch.push(SwitchInstruction {
                    id: sub_id,
                    op,
                    default_dest: var.default_dest.to_string(),
                    num_dest: var.dests.len() as i64,
                });

                for (cons, name) in &var.dests {
                    let el_id = self.switch_dest.get_id();
                    let const_id = const_parser.parse(module, type_parser, cons)?;
                    self.switch_dest.push(SwitchDest {
                        id: el_id,
                        pid: sub_id,
                        cid: const_id,
                        name: name.to_string(),
                    });
                }
                ("switch", sub_id)
            }
            LLVMTerminator::CatchSwitch(var) => {
                let sub_id = self.catchswitch.get_id();
                let op = self.parse_operand(module, type_parser, const_parser, &var.parent_pad)?;

                let dest = if let Some(n) = &var.default_unwind_dest {
                    n.to_string()
                } else {
                    "".to_string()
                };
                self.catchswitch.push(CatchSwitchInstruction {
                    id: sub_id,
                    ppad: op,
                    default_dest: dest,
                    result: var.result.to_string(),
                    num_handlers: var.catch_handlers.len() as i64,
                });

                for name in &var.catch_handlers {
                    let el_id = self.catchswitch_handlers.get_id();
                    self.catchswitch_handlers.push(NameElement {
                        id: el_id,
                        pid: sub_id,
                        dest: name.to_string(),
                    });
                }
                ("catchswitch", sub_id)
            }
            LLVMTerminator::Invoke(var) => {
                let sub_id = self.invoke.get_id();

                let func = match &var.function {
                    Either::Left(_) => {
                        return Err(
                            "Call Instruction: InlineAssembly is not supported yet!".to_string()
                        )
                    }
                    Either::Right(op) => {
                        self.parse_operand(module, type_parser, const_parser, op)?
                    }
                };

                self.invoke.push(CallBrInvokeInstruction {
                    id: sub_id,
                    func,
                    arg_num: var.arguments.len() as i64,
                    result: var.result.to_string(),
                    return_label: var.return_label.to_string(),
                    other: var.exception_label.to_string(),
                });

                for (arg, _) in &var.arguments {
                    let el_id = self.invoke_arg.get_id();
                    let op = self.parse_operand(module, type_parser, const_parser, arg)?;
                    self.invoke_arg.push(CallOperand {
                        id: el_id,
                        pid: sub_id,
                        oid: op,
                    });
                }
                ("invoke", sub_id)
            }
            LLVMTerminator::Resume(var) => {
                let sub_id = self.parse_operand(module, type_parser, const_parser, &var.operand)?;
                ("resume", sub_id)
            }
            LLVMTerminator::Unreachable(_var) => ("unreachable", -1),
        };

        self.instructions.push(Instruction {
            id: term_id,
            bid,
            vreg: "".to_string(),
            opcode: opcode.to_string(),
            atomic: false,
            binary: false,
            unary: false,
            family_id: instr_id,
        });

        Ok(term_id)
    }

    pub fn write_files(&self, dir: &str) -> Result<(), String> {
        fact_create(dir, &self.operands.name, &self.operands.as_string(";"))?;
        fact_create(dir, &self.locals.name, &self.locals.as_string(";"))?;

        fact_create(
            dir,
            &self.instructions.name,
            &self.instructions.as_string(";"),
        )?;

        fact_create(dir, &self.binaries.name, &self.binaries.as_string(";"))?;
        fact_create(dir, &self.unaries.name, &self.unaries.as_string(";"))?;
        fact_create(dir, &self.cmps.name, &self.cmps.as_string(";"))?;
        fact_create(dir, &self.selects.name, &self.selects.as_string(";"))?;
        fact_create(dir, &self.allocas.name, &self.allocas.as_string(";"))?;
        fact_create(dir, &self.loads.name, &self.loads.as_string(";"))?;
        fact_create(dir, &self.stores.name, &self.stores.as_string(";"))?;
        fact_create(dir, &self.cmpxchgs.name, &self.cmpxchgs.as_string(";"))?;
        fact_create(dir, &self.atomicrmws.name, &self.atomicrmws.as_string(";"))?;
        fact_create(dir, &self.geps.name, &self.geps.as_string(";"))?;
        fact_create(dir, &self.gep_index.name, &self.gep_index.as_string(";"))?;
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
            &self.extractvalue_index.name,
            &self.extractvalue_index.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.insertvalues.name,
            &self.insertvalues.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.insertvalue_index.name,
            &self.insertvalue_index.as_string(";"),
        )?;
        fact_create(dir, &self.calls.name, &self.calls.as_string(";"))?;
        fact_create(dir, &self.call_ops.name, &self.call_ops.as_string(";"))?;
        fact_create(dir, &self.phis.name, &self.phis.as_string(";"))?;
        fact_create(dir, &self.phi_values.name, &self.phi_values.as_string(";"))?;
        fact_create(
            dir,
            &self.landingpads.name,
            &self.landingpads.as_string(";"),
        )?;
        fact_create(dir, &self.catchpads.name, &self.catchpads.as_string(";"))?;
        fact_create(
            dir,
            &self.catchpad_arg.name,
            &self.catchpad_arg.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.cleanuppads.name,
            &self.cleanuppads.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.cleanuppad_arg.name,
            &self.cleanuppad_arg.as_string(";"),
        )?;
        fact_create(dir, &self.vaargs.name, &self.vaargs.as_string(";"))?;

        fact_create(dir, &self.br.name, &self.br.as_string(";"))?;
        fact_create(dir, &self.condbr.name, &self.condbr.as_string(";"))?;
        fact_create(dir, &self.switch.name, &self.switch.as_string(";"))?;
        fact_create(
            dir,
            &self.switch_dest.name,
            &self.switch_dest.as_string(";"),
        )?;
        fact_create(dir, &self.indirectbr.name, &self.indirectbr.as_string(";"))?;
        fact_create(
            dir,
            &self.indirectbr_dest.name,
            &self.indirectbr_dest.as_string(";"),
        )?;
        fact_create(dir, &self.invoke.name, &self.invoke.as_string(";"))?;
        fact_create(dir, &self.invoke_arg.name, &self.invoke_arg.as_string(";"))?;
        fact_create(dir, &self.cleanupret.name, &self.cleanupret.as_string(";"))?;
        fact_create(dir, &self.catchret.name, &self.catchret.as_string(";"))?;
        fact_create(
            dir,
            &self.catchswitch.name,
            &self.catchswitch.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.catchswitch_handlers.name,
            &self.catchswitch_handlers.as_string(";"),
        )?;
        fact_create(dir, &self.callbr.name, &self.callbr.as_string(";"))?;
        fact_create(dir, &self.callbr_arg.name, &self.callbr_arg.as_string(";"))?;

        Ok(())
    }
}
