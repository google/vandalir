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

use std::string::ToString;

use llvm_ir::Module as LLVMModule;
use llvm_ir_analysis::ModuleAnalysis as LLVMModuleAnalysis;

use crate::common::{fact_create, FactContainer, ToStrArray};
use crate::impl_tostring;

#[derive(Debug, Clone)]
pub struct FuncRelation {
    id: i64,
    func: String,
    arg: String,
}

impl_tostring!(FuncRelation);

impl ToStrArray for FuncRelation {
    fn to_array(&self) -> Vec<String> {
        vec![self.id.to_string(), self.func.clone(), self.arg.clone()]
    }
}

#[derive(Debug, Clone)]
pub struct BlockRelation {
    id: i64,
    func: String,
    blk: String,
    arg: String,
}

impl_tostring!(BlockRelation);

impl ToStrArray for BlockRelation {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.func.clone(),
            self.blk.clone(),
            self.arg.clone(),
        ]
    }
}
#[macro_export]
macro_rules! push_block_relation {
    ($container:expr, $val:expr, $func_name:expr, $block_name:expr) => {
        let bid = $container.get_id();
        $container.push(BlockRelation {
            id: bid,
            func: $func_name.clone(),
            blk: $block_name.to_string(),
            arg: $val.to_string(),
        });
    };
}

#[macro_export]
macro_rules! push_block_relations {
    ($container:expr, $iter:expr, $func_name:expr, $block_name:expr) => {
        for blk in $iter {
            push_block_relation!($container, blk, $func_name, $block_name);
        }
    };
}

#[macro_export]
macro_rules! push_func_relation {
    ($container:expr, $val:expr, $func_name:expr) => {
        let bid = $container.get_id();
        $container.push(FuncRelation {
            id: bid,
            func: $func_name.clone(),
            arg: $val.to_string(),
        });
    };
}

#[macro_export]
macro_rules! push_func_relations {
    ($container:expr, $iter:expr, $func_name:expr) => {
        for el in $iter {
            push_func_relation!($container, el, $func_name);
        }
    };
}

pub struct Analysis {
    func_callers: FactContainer<FuncRelation>,
    func_callees: FactContainer<FuncRelation>,
    func_block_returns: FactContainer<FuncRelation>,
    func_entries: FactContainer<FuncRelation>,
    block_preds: FactContainer<BlockRelation>,
    block_succs: FactContainer<BlockRelation>,
    block_ctr_deps: FactContainer<BlockRelation>,
    block_imm_ctr_deps: FactContainer<BlockRelation>,
    block_ctr_depndts: FactContainer<BlockRelation>,
    block_imm_ctr_depndts: FactContainer<BlockRelation>,
    block_ipostdom: FactContainer<BlockRelation>,
    block_ipostdom_children: FactContainer<BlockRelation>,
    block_ipostdom_children_of_ret: FactContainer<BlockRelation>,
    block_idom: FactContainer<BlockRelation>,
    block_idom_children: FactContainer<BlockRelation>,
    block_idom_children_of_ret: FactContainer<BlockRelation>,
}

impl Analysis {
    pub fn new() -> Result<Self, String> {
        Ok(Analysis {
            func_callers: FactContainer::new("func_caller"),
            func_callees: FactContainer::new("func_callee"),
            func_block_returns: FactContainer::new("func_block_return"),
            func_entries: FactContainer::new("func_block_entry"),
            block_preds: FactContainer::new("block_pred"),
            block_succs: FactContainer::new("block_succ"),
            block_ctr_deps: FactContainer::new("block_control_dependency"),
            block_imm_ctr_deps: FactContainer::new("block_imm_control_dependency"),
            block_ctr_depndts: FactContainer::new("block_control_dependent"),
            block_imm_ctr_depndts: FactContainer::new("block_imm_control_dependent"),
            block_ipostdom: FactContainer::new("block_ipostdom"),
            block_ipostdom_children: FactContainer::new("block_ipostdom_children"),
            block_ipostdom_children_of_ret: FactContainer::new("block_ipostdom_children_of_ret"),
            block_idom: FactContainer::new("block_idom"),
            block_idom_children: FactContainer::new("block_idom_children"),
            block_idom_children_of_ret: FactContainer::new("block_idom_children_of_ret"),
        })
    }

    pub fn parse(&mut self, module: &LLVMModule) -> Result<(), String> {
        let analysis = LLVMModuleAnalysis::new(module);
        let call_graph = analysis.call_graph();

        for func in &module.functions {
            let fname = format!("%{}", func.name);
            let fn_analysis = analysis.fn_analysis(&func.name);
            let cfg = fn_analysis.control_flow_graph();
            let cdg = fn_analysis.control_dependence_graph();
            let postdom = fn_analysis.postdominator_tree();
            let dom = fn_analysis.dominator_tree();

            // BLOCK
            for block in &func.basic_blocks {
                push_block_relations!(
                    self.block_preds,
                    cfg.preds(&block.name),
                    fname,
                    block.name
                );
                push_block_relations!(
                    self.block_succs,
                    cfg.succs(&block.name),
                    fname,
                    block.name
                );
                push_block_relations!(
                    self.block_imm_ctr_deps,
                    cdg.get_imm_control_dependencies(&block.name),
                    fname,
                    block.name
                );
                push_block_relations!(
                    self.block_ctr_deps,
                    cdg.get_control_dependencies(&block.name),
                    fname,
                    block.name
                );
                push_block_relations!(
                    self.block_imm_ctr_depndts,
                    cdg.get_imm_control_dependents(&block.name),
                    fname,
                    block.name
                );
                push_block_relations!(
                    self.block_ctr_depndts,
                    cdg.get_control_dependents(&block.name),
                    fname,
                    block.name
                );
                if let Some(blk) = postdom.ipostdom(&block.name) {
                    push_block_relation!(self.block_ipostdom, blk, fname, block.name);
                }
                push_block_relations!(
                    self.block_ipostdom_children,
                    postdom.children(&block.name),
                    fname,
                    block.name
                );
                push_block_relations!(
                    self.block_ipostdom_children_of_ret,
                    postdom.children_of_return(),
                    fname,
                    block.name
                );
                if let Some(blk) = dom.idom(&block.name) {
                    push_block_relation!(self.block_idom, blk, fname, block.name);
                }
                push_block_relations!(
                    self.block_idom_children,
                    dom.children(&block.name),
                    fname,
                    block.name
                );
                if let Some(blk) = dom.idom_of_return() {
                    push_block_relation!(self.block_idom_children_of_ret, blk, fname, block.name);
                }
            }

            // FUNC
            push_func_relations!(self.func_block_returns, cfg.preds_of_return(), fname);
            push_func_relations!(
                self.func_callers,
                call_graph.callers(func.name.as_str()),
                fname
            );
            push_func_relations!(
                self.func_callees,
                call_graph.callees(func.name.as_str()),
                fname
            );
            push_func_relation!(self.func_entries, cfg.entry(), fname);
        }

        Ok(())
    }
    pub fn write_files(&self, dir: &str) -> Result<(), String> {
        fact_create(
            dir,
            &self.func_callers.name,
            &self.func_callers.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.func_callees.name,
            &self.func_callees.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.func_block_returns.name,
            &self.func_block_returns.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.func_entries.name,
            &self.func_entries.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.block_preds.name,
            &self.block_preds.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.block_succs.name,
            &self.block_succs.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.block_ctr_deps.name,
            &self.block_ctr_deps.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.block_imm_ctr_deps.name,
            &self.block_imm_ctr_deps.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.block_ctr_depndts.name,
            &self.block_ctr_depndts.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.block_imm_ctr_depndts.name,
            &self.block_imm_ctr_depndts.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.block_ipostdom.name,
            &self.block_ipostdom.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.block_ipostdom_children.name,
            &self.block_ipostdom_children.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.block_ipostdom_children_of_ret.name,
            &self.block_ipostdom_children_of_ret.as_string(";"),
        )?;
        fact_create(dir, &self.block_idom.name, &self.block_idom.as_string(";"))?;
        fact_create(
            dir,
            &self.block_idom_children.name,
            &self.block_idom_children.as_string(";"),
        )?;
        fact_create(
            dir,
            &self.block_idom_children_of_ret.name,
            &self.block_idom_children_of_ret.as_string(";"),
        )?;
        Ok(())
    }
}
