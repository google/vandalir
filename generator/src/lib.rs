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

pub mod analysis;
pub mod common;
pub mod config;
pub mod constants;
pub mod instructions;
pub mod types;

use std::path::Path;

use llvm_ir::module::{DLLStorageClass, Linkage, ThreadLocalMode, UnnamedAddr, Visibility};
use llvm_ir::Module as LLVMModule;

use crate::common::{fact_create, FactContainer, ToStrArray};

#[derive(Debug, Clone)]
struct Function {
    pub id: i64,
    pub name: String,
    pub defined: bool,
    pub ret_tid: i64,
    pub num_params: i64,
}

impl_tostring!(Function);

impl ToStrArray for Function {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.name.clone(),
            self.defined.to_string(),
            self.ret_tid.to_string(),
            self.num_params.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
struct FuncArgument {
    pub id: i64,
    pub fid: i64,
    pub name: String,
    pub tid: i64,
}

impl_tostring!(FuncArgument);

impl ToStrArray for FuncArgument {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.fid.to_string(),
            self.name.clone(),
            self.tid.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
struct GlobalVar {
    pub id: i64,
    pub name: String,
    pub linkage: String,
    pub visibility: String,
    pub constant: bool,
    pub tid: i64,
    pub addr_space: u32,
    pub dll_storage_class: String,
    pub thread_local_mode: String,
    pub unnamed_addr: String,
    pub value_id: i64,
    pub alignment: u32,
}

impl_tostring!(GlobalVar);

impl ToStrArray for GlobalVar {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.name.clone(),
            self.linkage.clone(),
            self.visibility.clone(),
            self.constant.to_string(),
            self.tid.to_string(),
            self.addr_space.to_string(),
            self.dll_storage_class.clone(),
            self.thread_local_mode.clone(),
            self.unnamed_addr.clone(),
            self.value_id.to_string(),
            self.alignment.to_string(),
        ]
    }
}

#[derive(Debug, Clone)]
struct Block {
    pub id: i64,
    pub fid: i64,
    pub name: String,
    pub tid: i64,
}

impl_tostring!(Block);

impl ToStrArray for Block {
    fn to_array(&self) -> Vec<String> {
        vec![
            self.id.to_string(),
            self.fid.to_string(),
            self.name.clone(),
            self.tid.to_string(),
        ]
    }
}

fn unnamed_addr_to_str(val: UnnamedAddr) -> &'static str {
    match val {
        UnnamedAddr::Local => "Local",
        UnnamedAddr::Global => "Global",
    }
}

fn linkage_to_str(val: Linkage) -> &'static str {
    match val {
        Linkage::Private => "Private",
        Linkage::Internal => "Internal",
        Linkage::External => "External",
        Linkage::ExternalWeak => "ExternalWeak",
        Linkage::AvailableExternally => "AvailableExternally",
        Linkage::LinkOnceAny => "LinkOnceAny",
        Linkage::LinkOnceODR => "LinkOnceODR",
        Linkage::LinkOnceODRAutoHide => "LinkOnceODRAutoHide",
        Linkage::WeakAny => "WeakAny",
        Linkage::WeakODR => "WeakODR",
        Linkage::Common => "Common",
        Linkage::Appending => "Appending",
        Linkage::DLLImport => "DLLImport",
        Linkage::DLLExport => "DLLExport",
        Linkage::Ghost => "Ghost",
        Linkage::LinkerPrivate => "LinkerPrivate",
        Linkage::LinkerPrivateWeak => "LinkerPrivateWeak",
    }
}

fn visibility_to_str(val: Visibility) -> &'static str {
    match val {
        Visibility::Default => "Default",
        Visibility::Hidden => "Hidden",
        Visibility::Protected => "Protected",
    }
}

fn dllstorageclass_to_str(val: DLLStorageClass) -> &'static str {
    match val {
        DLLStorageClass::Default => "Default",
        DLLStorageClass::Import => "Import",
        DLLStorageClass::Export => "Export",
    }
}

fn threadlocalmode_to_str(val: ThreadLocalMode) -> &'static str {
    match val {
        ThreadLocalMode::NotThreadLocal => "NotThreadLocal",
        ThreadLocalMode::GeneralDynamic => "GeneralDynamic",
        ThreadLocalMode::LocalDynamic => "LocalDynamic",
        ThreadLocalMode::InitialExec => "InitialExec",
        ThreadLocalMode::LocalExec => "LocalExec",
    }
}

pub struct FactGenerator {
    globals: FactContainer<GlobalVar>,
    functions: FactContainer<Function>,
    arguments: FactContainer<FuncArgument>,
    blocks: FactContainer<Block>,

    type_parser: types::TypeParser,
    const_parser: constants::ConstantParser,
    instr_parser: instructions::InstructionParser,
    config_parser: config::ConfigParser,

    analysis: analysis::Analysis,
}

impl FactGenerator {
    pub fn new(ptr_size: &u8) -> Result<Self, String> {
        Ok(FactGenerator {
            globals: FactContainer::new("global_var"),
            functions: FactContainer::new("function"),
            arguments: FactContainer::new("function_argument"),
            blocks: FactContainer::new("block"),

            type_parser: types::TypeParser::new(*ptr_size)?,
            const_parser: constants::ConstantParser::new()?,
            instr_parser: instructions::InstructionParser::new()?,
            config_parser: config::ConfigParser::new()?,

            analysis: analysis::Analysis::new()?,
        })
    }

    pub fn parse_globals(&mut self, module: &LLVMModule) -> Result<(), String> {
        for var in &module.global_vars {
            let gid = self.globals.get_id();

            let tid = self.type_parser.parse(module, &var.ty)?;

            let unnamed_addr = if let Some(val) = var.unnamed_addr {
                unnamed_addr_to_str(val)
            } else {
                ""
            };

            let val = if let Some(value) = &var.initializer {
                self.const_parser
                    .parse(module, &mut self.type_parser, value.as_ref())?
            } else {
                -1
            };

            self.globals.push(GlobalVar {
                id: gid,
                name: var.name.to_string(),
                linkage: linkage_to_str(var.linkage).to_string(),
                visibility: visibility_to_str(var.visibility).to_string(),
                constant: var.is_constant,
                tid,
                addr_space: var.addr_space,
                dll_storage_class: dllstorageclass_to_str(var.dll_storage_class).to_string(),
                thread_local_mode: threadlocalmode_to_str(var.thread_local_mode).to_string(),
                unnamed_addr: unnamed_addr.to_string(),
                value_id: val,
                alignment: var.alignment,
            });
        }

        Ok(())
    }

    pub fn parse_llvm(&mut self, path: &Path) -> Result<(), String> {
        let module = LLVMModule::from_bc_path(path)?;

        self.parse_globals(&module)?;

        for func in &module.functions {
            let func_id = self.functions.get_id();

            let ret_tid = self.type_parser.parse(&module, &func.return_type)?;
            self.functions.push(Function {
                id: func_id,
                name: format!("%{}", func.name),
                defined: true,
                ret_tid,
                num_params: func.parameters.len() as i64,
            });

            for param in &func.parameters {
                let arg_id = self.arguments.get_id();
                let param_tid = self.type_parser.parse(&module, &param.ty)?;
                self.arguments.push(FuncArgument {
                    id: arg_id,
                    fid: func_id,
                    name: param.name.to_string(),
                    tid: param_tid,
                });
            }

            for block in &func.basic_blocks {
                let block_id = self.blocks.get_id();
                for instr in &block.instrs {
                    self.instr_parser.parse(
                        &module,
                        &mut self.type_parser,
                        &mut self.const_parser,
                        block_id,
                        instr,
                    )?;
                }

                let term_id = self.instr_parser.parse_terminator(
                    &module,
                    &mut self.type_parser,
                    &mut self.const_parser,
                    block_id,
                    &block.term,
                )?;

                self.blocks.push(Block {
                    id: block_id,
                    fid: func_id,
                    name: block.name.to_string(),
                    tid: term_id,
                });
            }
        }

        self.analysis.parse(&module)?;

        Ok(())
    }

    pub fn parse_config(&mut self, config: &Option<Vec<(String, String)>>) -> Result<(), String> {
        if let Some(data) = config {
            self.config_parser.parse(data)?;
        }

        Ok(())
    }

    pub fn write_facts(&self, dir: &str) -> Result<(), String> {
        fact_create(dir, &self.globals.name, &self.globals.as_string(";"))?;
        fact_create(dir, &self.functions.name, &self.functions.as_string(";"))?;
        fact_create(dir, &self.arguments.name, &self.arguments.as_string(";"))?;
        fact_create(dir, &self.blocks.name, &self.blocks.as_string(";"))?;

        self.type_parser.write_files(dir)?;
        self.const_parser.write_files(dir)?;
        self.instr_parser.write_files(dir)?;
        self.config_parser.write_files(dir)?;
        self.analysis.write_files(dir)?;

        Ok(())
    }
}
