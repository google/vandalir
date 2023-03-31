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
use std::string::ToString;

use llvm_ir::function::Function as LLVMFunction;
use llvm_ir_analysis::ModuleAnalysis as LLVMModuleAnalysis;

use crate::common::{fact_create, FactContainer, ToStrArray};
use crate::impl_tostring;

pub const ENTRY_BLOCK_PRED: i64 = -1;

#[derive(Debug, Clone)]
pub struct FuncRelation {
    id: i64,
    func: i64,
    arg: i64,
}

impl_tostring!(FuncRelation);

#[derive(Debug, Clone)]
pub struct FuncExternalRelation {
    id: i64,
    func: i64,
    arg: String,
}

impl_tostring!(FuncExternalRelation);

impl ToStrArray for FuncExternalRelation {
    fn to_array(&self) -> Vec<String> {
        vec![self.id.to_string(), self.func.to_string(), self.arg.clone()]
    }
}

impl ToStrArray for FuncRelation {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.func.to_string(),
            self.arg.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
pub struct BlockRelation {
    id: i64,
    func: i64,
    blk: i64,
    arg: i64,
}

impl_tostring!(BlockRelation);

impl ToStrArray for BlockRelation {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.func.to_string(),
            self.blk.to_string(),
            self.arg.to_string(),
        ]
    }
}
#[macro_export]
macro_rules! push_block_relation {
    ($container:expr, $val:expr, $fid:expr, $bid:expr) => {
        let bid = $container.get_id();
        $container.push(BlockRelation {
            id: bid,
            func: $fid,
            blk: $bid,
            arg: $val,
        });
    };
}

#[macro_export]
macro_rules! push_block_relations {
    ($container:expr, $map:ident, $iter:expr, $fid:expr, $bid:expr) => {
        for blk in $iter {
            push_block_relation!(
                $container,
                get_id_by_name($map, &blk.to_string())?,
                $fid,
                $bid
            );
        }
    };
}

#[macro_export]
macro_rules! push_func_relation {
    ($container:expr, $val:expr, $fid:expr) => {
        let bid = $container.get_id();
        $container.push(FuncRelation {
            id: bid,
            func: $fid,
            arg: $val,
        });
    };
}

#[macro_export]
macro_rules! push_func_relations {
    ($container:expr, $map:ident, $iter:expr, $fid:expr) => {
        for el in $iter {
            push_func_relation!($container, get_id_by_name($map, &el.to_string())?, $fid);
        }
    };
}

fn get_id_by_name(name_map: &HashMap<String, i64>, name: &str) -> Result<i64, String> {
    match name_map.get(name) {
        Some(id) => {
            return Ok(*id);
        }
        None => {
            if name == "Return" {
                return Ok(-1);
            }
            return Err(format!("Unknown name {}", name));
        }
    };
}

pub struct Analysis {
    func_callers: FactContainer<FuncRelation>,
    func_callees: FactContainer<FuncRelation>,
    func_ext_callees: FactContainer<FuncExternalRelation>,
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
            func_ext_callees: FactContainer::new("func_ext_callee"),
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
    pub fn parse_blocks(
        &mut self,
        analysis: &LLVMModuleAnalysis,
        fid: i64,
        blocks: &HashMap<String, i64>,
        func: &LLVMFunction,
        block_pred_cfg: &mut HashMap<i64, Vec<i64>>,
    ) -> Result<(), String> {
        let fn_analysis = analysis.fn_analysis(&func.name);
        let cfg = fn_analysis.control_flow_graph();
        let cdg = fn_analysis.control_dependence_graph();
        let postdom = fn_analysis.postdominator_tree();
        let dom = fn_analysis.dominator_tree();

        // BLOCK
        for block in &func.basic_blocks {
            let bid = get_id_by_name(blocks, &block.name.to_string())?;

            for blk in cfg.preds(&block.name) {
                let pred_bid = get_id_by_name(blocks, &blk.to_string())?;
                push_block_relation!(self.block_preds, pred_bid, fid, bid);
                block_pred_cfg
                    .entry(bid)
                    .or_insert_with(|| Vec::new())
                    .push(pred_bid);
            }

            push_block_relations!(self.block_succs, blocks, cfg.succs(&block.name), fid, bid);
            push_block_relations!(
                self.block_imm_ctr_deps,
                blocks,
                cdg.get_imm_control_dependencies(&block.name),
                fid,
                bid
            );
            push_block_relations!(
                self.block_ctr_deps,
                blocks,
                cdg.get_control_dependencies(&block.name),
                fid,
                bid
            );
            push_block_relations!(
                self.block_imm_ctr_depndts,
                blocks,
                cdg.get_imm_control_dependents(&block.name),
                fid,
                bid
            );
            push_block_relations!(
                self.block_ctr_depndts,
                blocks,
                cdg.get_control_dependents(&block.name),
                fid,
                bid
            );
            if let Some(blk) = postdom.ipostdom(&block.name) {
                push_block_relation!(
                    self.block_ipostdom,
                    get_id_by_name(blocks, &blk.to_string())?,
                    fid,
                    bid
                );
            }
            push_block_relations!(
                self.block_ipostdom_children,
                blocks,
                postdom.children(&block.name),
                fid,
                bid
            );
            push_block_relations!(
                self.block_ipostdom_children_of_ret,
                blocks,
                postdom.children_of_return(),
                fid,
                bid
            );
            if let Some(blk) = dom.idom(&block.name) {
                push_block_relation!(
                    self.block_idom,
                    get_id_by_name(blocks, &blk.to_string())?,
                    fid,
                    bid
                );
            }
            push_block_relations!(
                self.block_idom_children,
                blocks,
                dom.children(&block.name),
                fid,
                bid
            );
            if let Some(blk) = dom.idom_of_return() {
                push_block_relation!(
                    self.block_idom_children_of_ret,
                    get_id_by_name(blocks, &blk.to_string())?,
                    fid,
                    bid
                );
            }
        }

        push_func_relations!(self.func_block_returns, blocks, cfg.preds_of_return(), fid);
        let entry_bid = get_id_by_name(blocks, &cfg.entry().to_string())?;
        push_func_relation!(self.func_entries, entry_bid, fid);
        block_pred_cfg
            .entry(entry_bid)
            .or_insert_with(|| Vec::new())
            .push(ENTRY_BLOCK_PRED);

        Ok(())
    }

    pub fn parse_functions(
        &mut self,
        analysis: &LLVMModuleAnalysis,
        funcs: &HashMap<String, i64>,
    ) -> Result<(), String> {
        let call_graph = analysis.call_graph();

        for func in &analysis.module().functions {
            let fid = get_id_by_name(funcs, &func.name)?;

            push_func_relations!(
                self.func_callers,
                funcs,
                call_graph.callers(func.name.as_str()),
                fid
            );
            for f in call_graph.callees(func.name.as_str()) {
                // filter out external function's callees
                if let Some(id) = funcs.get(f) {
                    push_func_relation!(self.func_callees, *id, fid);
                } else {
                    let bid = self.func_ext_callees.get_id();
                    self.func_ext_callees.push(FuncExternalRelation {
                        id: bid,
                        func: fid,
                        arg: f.to_string(),
                    });
                }
            }
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
            &self.func_ext_callees.name,
            &self.func_ext_callees.as_string(";"),
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
