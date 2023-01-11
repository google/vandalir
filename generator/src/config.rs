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

use crate::common::{fact_create, FactContainer, ToStrArray};
use crate::impl_tostring;

#[derive(Debug, Clone)]
struct Config {
    pub id: i64,
    pub key: String,
    pub value: String,
}

impl_tostring!(Config);

impl ToStrArray for Config {
    fn to_array(&self) -> Vec<String> {
        vec![self.id.to_string(), self.key.clone(), self.value.clone()]
    }
}

pub struct ConfigParser {
    conf: FactContainer<Config>,
}

impl ConfigParser {
    pub fn new() -> Result<Self, String> {
        Ok(ConfigParser {
            conf: FactContainer::new("config"),
        })
    }

    pub fn parse(&mut self, options: &Vec<(String, String)>) -> Result<(), String> {
        for (key, value) in options {
            let id = self.conf.get_id();
            self.conf.push(Config {
                id,
                key: key.clone(),
                value: value.clone(),
            });
        }

        Ok(())
    }

    pub fn write_files(&self, dir: &str) -> Result<(), String> {
        fact_create(dir, &self.conf.name, &self.conf.as_string(";"))?;

        Ok(())
    }
}
