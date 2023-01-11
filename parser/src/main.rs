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

use clap::Parser;
use std::path::Path;

extern crate fact_generator;

use fact_generator::FactGenerator;

fn keyvalue_parse(s: &str) -> Result<(String, String), String> {
    let pos = s
        .find('=')
        .ok_or_else(|| format!("invalid KEY=value: no `=` found in `{}`", s))?;
    Ok((s[..pos].to_string(), s[pos + 1..].to_string()))
}

#[derive(Parser, Debug)]
#[command(author, version, about)]
/// Datalog facts generator from a LLVM-IR bytecode file
struct Args {
    #[arg(short, long)]
    /// Output directory
    output: String,

    /// Path to the LLVM-IR .bc file
    file: String,

    #[arg(short, long, value_parser = keyvalue_parse)]
    /// Config option (format <key>=<value>)
    config: Option<Vec<(String, String)>>,

    #[arg(short, long, default_value_t=64)]
    /// size of pointer (in bits)
    pointer_size: u8,
}

fn main() -> Result<(), String> {
    let args = Args::parse();

    let mut generator = FactGenerator::new(&args.pointer_size)?;

    generator.parse_llvm(Path::new(&args.file))?;
    generator.parse_config(&args.config)?;

    generator.write_facts(args.output.as_str())?;

    Ok(())
}
