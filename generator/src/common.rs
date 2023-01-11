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

use std::fs::OpenOptions;
use std::io::Write;
use std::path::PathBuf;
use std::string::ToString;

pub trait ToStrArray {
    fn to_array(&self) -> Vec<String>;
}

pub struct FactContainer<T> {
    pub id: i64,
    pub name: String,
    pub data: Vec<T>,
}

impl<T> FactContainer<T> {
    pub fn new(name: &str) -> Self {
        FactContainer {
            id: 0,
            name: name.to_string(),
            data: Vec::new(),
        }
    }

    pub fn push(&mut self, element: T) {
        self.data.push(element);
    }

    pub fn get_id(&mut self) -> i64 {
        let id = self.id;
        self.id += 1;
        id
    }
}

impl<T: ToString + ToStrArray> FactContainer<T> {
    pub fn as_string(&self, delimiter: &str) -> String {
        let mut out = String::new();
        for el in &self.data {
            out.push_str(el.to_array().join(delimiter).as_str());
            out.push('\n');
        }
        out
    }
}

impl<'a, T> std::iter::IntoIterator for &'a FactContainer<T> {
    type Item = <std::slice::Iter<'a, T> as Iterator>::Item;
    type IntoIter = std::slice::Iter<'a, T>;

    fn into_iter(self) -> Self::IntoIter {
        self.data.as_slice().iter()
    }
}

#[macro_export]
macro_rules! impl_tostring {
    ($inst:ty) => {
        impl ToString for $inst {
            fn to_string(&self) -> String {
                self.to_array().join(";")
            }
        }
    };
}

pub fn fact_create(dir: &str, name: &str, data: &String) -> Result<(), String> {
    let mut fnames = String::from(name);
    fnames.push_str(".facts");

    let mut file = OpenOptions::new()
        .write(true)
        .create(true)
        .truncate(true)
        .open(PathBuf::from(dir).join(fnames.as_str()))
        .map_err(|e| format!("Failed to open file: {:?}", e))?;
    file.write_all(data.as_bytes())
        .map_err(|e| format!("Failed to write data: {:?}", e))?;

    Ok(())
}
