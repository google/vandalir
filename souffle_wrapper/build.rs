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

use std::env;
use std::process::exit;
use std::process::Command;

use std::path::Path;

fn main() {
    let debug = env::var_os("VANDALIR_SOUFFLE_DEBUG");
    let out_dir = env::var("OUT_DIR").unwrap();
    let out_logic_file = Path::new(out_dir.as_str()).join("logic.cpp");

    let mut args = vec![
        "main.dl",
        "-I",
        "core/",
        "-I",
        "vulnerabilities/",
        "-g",
        out_logic_file.to_str().unwrap(),
    ];

    let mut _extra = String::new();
    if let Some(debug_opts) = debug {
        if !debug_opts.is_empty() {
            args.push("-M");
            _extra = debug_opts
                .to_str()
                .ok_or("Failed to get VANDALIR_SOUFFLE_DEBUG")
                .expect("Failed to extract debug flags from VANDALIR_SOUFFLE_DEBUG")
                .replace(",", " ");
            args.push(_extra.as_str());
        }
    }

    let res = Command::new("souffle")
        .args(&args)
        .current_dir("../logic")
        .output()
        .expect("failed to generate logic CPP file");

    if !res.status.success() {
        println!(
            "{}",
            std::str::from_utf8(&res.stderr).expect("Failed to get stderr output")
        );
        exit(1);
    }

    cxx_build::bridge("src/lib.rs")
        .file("src/logic_wrapper.cpp")
        .include(Path::new(out_dir.as_str()))
        .flag_if_supported("-std=c++17")
        .define("__EMBEDDED_SOUFFLE__", None)
        .define("RAM_DOMAIN_SIZE", Some("64"))
        .warnings(false) // souffle's generated code has a lot of warning.
        .compile("souffle_wrapper");

    println!("cargo:rerun-if-changed=build.rs");
    println!("cargo:rerun-if-changed=src/lib.rs");
    println!("cargo:rerun-if-changed=src/logic_wrapper.cpp");
    println!("cargo:rerun-if-env-changed=VANDALIR_SOUFFLE_DEBUG");
}
