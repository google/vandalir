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

use clap::{Args, Parser, Subcommand};
use std::fs;
use std::path::Path;

extern crate fact_generator;
extern crate souffle_wrapper;

use fact_generator::FactGenerator;
use souffle_wrapper::SouffleLogic;

fn keyvalue_parse(s: &str) -> Result<(String, String), String> {
    let pos = s
        .find('=')
        .ok_or_else(|| format!("invalid KEY=value: no `=` found in `{}`", s))?;
    Ok((s[..pos].to_string(), s[pos + 1..].to_string()))
}

#[derive(Parser)]
#[command(author, version, about)]
struct CliArgs {
    #[command(subcommand)]
    command: Commands,
}

#[derive(Subcommand, Clone)]
enum Commands {
    /// Creates facts for a LLVM bytecode file
    CreateFact(Opts),
    /// Creates facts and runs analysis
    Run(Opts),
    /// Runs analysis on top of previously generated facts
    Analyze {
        #[arg(short, long)]
        /// Facts directory
        facts: String,
        #[arg(short, long)]
        /// Output directory
        output: String,
    },
}

#[derive(Args, Clone)]
struct Opts {
    #[arg(short, long)]
    /// Output directory
    output: String,

    /// Path to the LLVM-IR .bc file
    file: String,

    #[arg(short, long, value_parser = keyvalue_parse)]
    /// Config option (format <key>=<value>)
    config: Option<Vec<(String, String)>>,

    #[arg(short, long, default_value_t = 64)]
    /// Size of pointer (in bits)
    pointer_size: u8,
}

fn main() -> Result<(), String> {
    let args = CliArgs::parse();

    match &args.command {
        Commands::CreateFact(opt) => {
            fs::create_dir_all(opt.output.as_str()).expect("Failed to create fact directory");
            let mut generator = FactGenerator::new(&opt.pointer_size)?;

            generator.parse_llvm(Path::new(&opt.file))?;
            generator.parse_config(&opt.config)?;

            generator.write_facts(opt.output.as_str())?;
        }
        Commands::Run(opt) => {
            let fact_dir = Path::new(opt.output.as_str()).join("facts");
            let out_dir = Path::new(opt.output.as_str()).join("out");

            fs::create_dir_all(fact_dir.to_str().ok_or("Failed to get fact path")?)
                .expect("Failed to create fact directory");
            fs::create_dir_all(out_dir.to_str().ok_or("Failed to get out path")?)
                .expect("Failed to create output directory");

            let mut generator = FactGenerator::new(&opt.pointer_size)?;

            generator.parse_llvm(Path::new(&opt.file))?;
            generator.parse_config(&opt.config)?;

            generator.write_facts(fact_dir.to_str().ok_or("Failed to get fact path")?)?;

            let mut logic = SouffleLogic::new();
            logic.run(
                fact_dir.to_str().ok_or("Failed to get fact path")?,
                out_dir.to_str().ok_or("Failed to get out path")?,
            );
        }
        Commands::Analyze { facts, output } => {
            fs::create_dir_all(output.as_str()).expect("Failed to create fact directory");
            let mut logic = SouffleLogic::new();
            logic.run(facts.as_str(), output.as_str());
        }
    };

    Ok(())
}
