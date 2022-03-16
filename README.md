## VANDAL

VANDAL (**V**ulnerability detection & static **AN**alysis using **DA**talog and **L**LVM-IR) is a tool for analyzing LLVM-IR with Datalog with the goal to find vulnerabilities. 



## Set up

Install python3 (version >= 3.6)

Install [clang](https://clang.llvm.org) (version >= 6.0.0, currently supported: LLVM 10)

install [llvmlite](https://github.com/numba/llvmlite) (version >= 0.34.0): 

```
pip3 install llvmlite
```

Build and install [souffle](https://souffle-lang.github.io/) (version >=2.0.2):

```
curl -s https://packagecloud.io/install/repositories/souffle-lang/souffle/script.deb.sh | sudo bash

sudo apt-get install souffle
```

Or build and install it manually as described here(https://souffle-lang.github.io/build).



## Usage

To start the full pipeline on a LLVM-IR file simply run:

```
./run.sh path/to/sourcefile.ll
```

The results are then stored in the output directory. 

Additional parameters for run.sh

`-p  generate profile using souffle's profiler`

`-c  compile to C++ before executing (useful if large/complex programs are analyzed)`

`-pc  use previously compiled version (does not work with profiler)`

`-f specify facts directory (default: facts)`

`-o specify output directory (default: output)`

`-j specify how many threads Soufflé may use (default: 24)`

<!---

The current processing pipeline done within this script consists of the following steps:

**0) Optionally: Generate LLVM-IR Code from C file**

```
clang -S -emit-llvm "path/to/inputdir/file.c" -o "path/to/outputdir/file.ll"
```

The *run.sh* script stores all LLVM-IR code in the *llvm-ir* directory.

**1) Parse LLVM-IR to datalog facts with Parser.py**

```
python3 Parser.py "path/to/file.ll"
```

**2) run the datalog analysis with souffle**

```
souffle "./logic/main.dl" -F "./facts" -D "./output"
```

The program is started using the main.dl file from the logic directory. The path to the generated fact files (*facts*) and the output directory (*output*) need to be specified as parameters.

Finally the result of the analysis can be found in the *output* directory.

-->