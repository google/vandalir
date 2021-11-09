## VANDAL

VANDAL (**V**ulnerability detection & static **AN**alysis using **DA**talog and **L**LVM-IR) is a tool for analyzing LLVM-IR with Datalog with the goal to find vulnerabilities. 



## Set up

Install python3 (version >= 3.6)

Install [clang](https://clang.llvm.org) (version >= 6.0.0, currently supported: LLVM 10)

install [llvmlite](https://github.com/numba/llvmlite) (version >= 0.34.0): 

```
pip3 install llvmlite
```

Install [souffle](https://souffle-lang.github.io/) (version >=2.0.2):

```
echo "deb https://dl.bintray.com/souffle-lang/deb-unstable bionic main" | sudo tee -a /etc/apt/sources.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61
sudo apt-get update

sudo apt-get install souffle
```



## Usage

To start the full pipeline on a c file simply run:

```
./run.sh path/to/sourcefile.c
```

The results are then stored in the output directory. 

Additional parameters for run.sh

`-p  generate profile using souffle's profiler`

`-c  compile to C++ before executing (useful if large/complex programs are analyzed)`

`-pc  use previously compiled version (does not work with profiler)`

`-f specify facts directory (default: facts)`

`-o specify output directory (default: output)`

`-j specify how many threads Soufflé may use (default: 24)`

The current processing pipeline done within this script consists of the following steps:

**1) Generate LLVM-IR Code or Bytecode**

```
clang -S -emit-llvm "path/to/inputdir/file.c" -o "path/to/outputdir/file.ll"
```

The *run.sh* script stores all LLVM-IR code in the *llvm-ir* directory.

**2) Parse LLVM-IR to datalog facts with Parser.py**

```
python3 Parser.py "path/to/file.ll"
```

**3) run the datalog analysis with souffle**

```
souffle "./logic/main.dl" -F "./facts" -D "./output"
```

The program is started using the main.dl file from the logic directory. The path to the generated fact files (*facts*) and the output directory (*output*) need to be specified as parameters.

Finally the result of the analysis can be found in the *output* directory.