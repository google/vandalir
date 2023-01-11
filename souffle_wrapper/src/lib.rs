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

use cxx::let_cxx_string;

#[cxx::bridge(namespace = "souffle")]
mod ffi {
    // C++ types and signatures exposed to Rust.
    unsafe extern "C++" {
        include!("souffle_wrapper/src/logic_wrapper.cpp");
        type SfLogicWrapper;

        fn newInstance() -> UniquePtr<SfLogicWrapper>;
        fn SetNumThreads(self: Pin<&mut SfLogicWrapper>, num: usize);
        fn RunAll(self: Pin<&mut SfLogicWrapper>, input: &CxxString, output: &CxxString);
        fn PrintAll(self: Pin<&mut SfLogicWrapper>, output: &CxxString);
        fn LoadAll(self: Pin<&mut SfLogicWrapper>, input: &CxxString);
        fn DumpInputs(self: Pin<&mut SfLogicWrapper>);
        fn DumpOutputs(self: Pin<&mut SfLogicWrapper>);
    }
}

pub struct SouffleLogic {
    _impl: cxx::UniquePtr<ffi::SfLogicWrapper>,
}

impl SouffleLogic {
    pub fn new() -> Self {
        SouffleLogic {
            _impl: ffi::newInstance()
        }
    }

    pub fn set_num_threads(&mut self, num: usize) {
        self._impl.pin_mut().SetNumThreads(num);
    }

    pub fn run(&mut self, fact_dir: &str, out_dir: &str) {
        let_cxx_string!(input = fact_dir);
        let_cxx_string!(output = out_dir);
        self._impl.pin_mut().RunAll(&input, &output);
    }

    pub fn print(&mut self, out_dir: &str) {
        let_cxx_string!(output = out_dir);
        self._impl.pin_mut().PrintAll(&output);
    }

    pub fn load(&mut self, fact_dir: &str) {
        let_cxx_string!(input = fact_dir);
        self._impl.pin_mut().LoadAll(&input);
    }

    pub fn dump_input(&mut self) {
        self._impl.pin_mut().DumpInputs();
    }

    pub fn dump_output(&mut self) {
        self._impl.pin_mut().DumpOutputs();
    }

}
