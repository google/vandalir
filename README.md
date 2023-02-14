## VANDALIR V2

VANDALIR (**V**ulnerability detection & static **AN**alysis using **DA**talog and **L**LVM-**IR**) is a tool for analyzing LLVM-IR with Datalog with the goal of finding vulnerabilities. 

**V2** is a reworked version of the original [tool](https://github.com/vandaltool/vandalir).

Original authors:
* Joschua Schilling
* Tilo M{\"u}ller

NOTE: Currently, the v2 version does not entirely match the fucntionality of the original tool.
Development is ongoing.

## Set up

Install [clang](https://clang.llvm.org) (version >= 10, currently supported: LLVM 14)

#### MacOS:
```
brew install llvm@14
export LLVM_SYS_140_PREFIX=/usr/local/Cellar/llvm@14/14.0.6
```

Install [rust](https://clang.llvm.org)

Build and install [souffle](https://souffle-lang.github.io/) (version >=2.0.2i, with SOUFFLE_DOMAIN_64BIT ).

GCC version >= 11. 

## Build
```
export VANDALIR_SOUFFLE_DEBUG=DEBUG_xxx,DEBUG_yyy  # optional
export CXXFLAGS=-I/path/to/souffle/include
cargo build [--release | --debug]
```
where `DEBUG_xxx` and `DEBUG_yyy` are debug options for VANDALIR datalog logic.

The build process produces two tools:

* `vandalir` is the all-in-one tool for analyzing a LLVM IR bytecode file;
* `fact_parser` standalone parser and fact generator for LLVM IR bytecode file (.bc)

## Tools

### `vandalir` tool
All-in-one tool for analyzing a LLVM-IR bytecode file.

`vandalir` subcommands:

* `create-fact` creates facts for a LLVM bytecode file
* `run` creates facts and runs analysis
* `analyze` runs analysis on top of previously generated facts
* `help` prints the help of the given subcommand(s)

##### `create-fact` subcommand
Creates facts for a LLVM-IR bytecode file

Usage: `vandalir create-fact [OPTIONS] --output <OUTPUT> <FILE>`

Arguments:

  `<FILE>`  Path to the LLVM-IR .bc file

Options:

*   `-o, --output <OUTPUT>` output directory
*   `-c, --config <CONFIG>` key/value config options (format `<key>=<value>`)
*   `-p, --pointer-size <POINTER_SIZE>` size of pointer (in bits) [default: 64]
*   `-h, --help` prints help information

##### `run` subcommand
Creates facts and runs analysis for a LLVM-IR bytecode file.

Usage: `vandalir run [OPTIONS] --output <OUTPUT> <FILE>`

Arguments:

  `<FILE>`  Path to the LLVM-IR .bc file

Options:

*   `-o, --output <OUTPUT>` output directory
*   `-c, --config <CONFIG>` key/value config options (format `<key>=<value>`)
*   `-p, --pointer-size <POINTER_SIZE>` size of pointer (in bits) [default: 64]
*   `-h, --help` prints help information

##### `analyze` subcommand
Runs analysis on top of previously generated facts

Usage: `vandalir analyze --facts <FACTS> --output <OUTPUT>`

Options:

*  `-f, --facts <FACTS>` directory with facts for analyzing
*  `-o, --output <OUTPUT>` output directory
*  `-h, --help` prints help information

### `fact_parser` tool
Standalone datalog facts generator from a LLVM-IR bytecode file

Usage: `fact_parser [OPTIONS] --output <OUTPUT> <FILE>`

Arguments:

 `<FILE>` Path to the LLVM-IR .bc file

Options:

*  `-o, --output <OUTPUT>` Output directory
*  `-c, --config <CONFIG>` key/value config options (format `<key>=<value>`)
*  `-p, --pointer-size <POINTER_SIZE>` size of pointer (in bits) [default: 64]
*  `-h, --help` Print help information
*  `-V, --version` Print version information

### `run.py` tool
Builds `fact_parser` and runs souffle pipeline for a LLVM-IR bytecode file.
Useful for debugging or developing datalog rules.

Usage: `run.py [-h] [-c] [-pc] [-p] -o OUTPUT_DIR [-j THREAD_COUNT] [-m DEBUG_MACRO] [--config CONFIG] [file]`

Arguments:

`<FILE>` Path to the LLVM-IR .bc file

Options:

*  `-h, --help` show help message and exit
*  `-c` use compilation in Soufflé
*  `-pc` use previous compiled version
*  `-p` use the Soufflé profiler
*  `-o OUTPUT_DIR` output directory (default: output)
*  `-j THREAD_COUNT` number of threads Soufflé may use (default: 4)
*  `-m DEBUG_MACRO` Debug MACRO
*  `--config CONFIG` Extra config in key/value format: <KEY>=<VALUE>

### `run_juliet.py` tool
Run VANDALIR for prebuilt set of tests from [Juliet Test Suite](https://samate.nist.gov/SARD/test-suites/112).
Not all CWEs are included.

Usage: `run_juliet.py [-h] [-p VANDALIR_PROJECT] -o OUTPUT [-j THREAD_COUNT] [-t THREAD_POOL_SIZE] [-c CWE]`

Options:
*  `-h, --help` show help message and exit
*  `-p VANDALIR_PROJECT` (optional) VANDALIR project directory
*  `-o OUTPUT` output directory
*  `-j THREAD_COUNT` number of threads Soufflé may use (default: 4)
*  `-t THREAD_POOL_SIZE` Pool thread size (default: 16)
*  `-c CWE` CWE to test

### `run-tests-simple.sh`
Runs VANDALIR for `tests/simple/*` tests

Usage: `./run-tests-simple.sh [ -o | --output ] [ -r | --report ] [ -h | --help ]`

Options:

*  `-h, --help` show help message and exit
*  `-o OUTPUT_DIR` output directory
*  `-r REPORT` report file with test results.

## Configuration
Configuration is done via `-c` option in `vandalir`/`fact_parser` tools.

[TODO] add config options.

## Directories
*/cli* `vandalir` source code. <br>
*/generator* source code of the LLVM-IR fact generator.<br>
*/logic* Soufflé Datalog code of VANDALIR.<br>
*/parser* `fact_parser` source code.<br>
*/souffle_wrapper* Rust wrapper for Soufflé generated C++ code.<br>
*/tests* contains test cases <br>

# Contributers
Dmitry Yatsushkevich <dmitryya@google.com>

## Published work

If your research find one or several components of VANDALIR useful, please cite [our paper](https://link.springer.com/chapter/10.1007/978-3-031-09484-2_6):
```
@inproceedings{schilling2022vandalir,
  title={VANDALIR: Vulnerability Analyses Based on Datalog and LLVM-IR},
  author={Schilling, Joschua and M{\"u}ller, Tilo},
  booktitle={International Conference on Detection of Intrusions and Malware, and Vulnerability Assessment},
  pages={96--115},
  year={2022},
  organization={Springer}
}

```

## Disclaimer

This project is not an official Google project. It is not supported by
Google and Google specifically disclaims all warranties as to its quality,
merchantability, or fitness for a particular purpose.

## License

VANDALIR is distributed under the MIT License.
* 1. 1. 1. 

