## LLVM Datalog Analyzer

A tool for analyzing LLVM-IR with Datalog with the goal to find vulnerabilities. 



## Set up

Install python3

install [llvmlite](https://github.com/numba/llvmlite): 

```
pip3 install llvmlite
```

Install [souffle](https://souffle-lang.github.io/):

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

The results are then stored in the output directory. If no path is specified the bo.c file from the test directory is used.

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