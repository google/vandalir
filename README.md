## VANDALIR

VANDALIR (**V**ulnerability detection & static **AN**alysis using **DA**talog and **L**LVM-**IR**) is a tool for analyzing LLVM-IR with Datalog with the goal to find vulnerabilities. 

 

## Set up

Install python3 (version >= 3.6)

Install [clang](https://clang.llvm.org) (version >= 10, currently supported: LLVM 10)

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

`-j specify how many threads Soufflé may use (default: 4)`

## Configuration
Configuration is done within the extractor.py file. There you can activate library mode or change settings for vulnerability and warnings output.

## Tools
run.py starts the VANDALIR pipeline.<br>
run_juliet.py runs all Juliet test cases from the /test/juliet directory.<br>
extractor.py is the extractor component, which creates the knowledge base. 

## Directories
*/bin* contains the compiled version of VANDALIR.<br>
*/data* contains raw evaluation data.<br>
*/facts* is used to store fact files.<br>
*/llvm-ir* is used to store llvm-ir files, if c files are used as input for the VANDALIR pipeline.<br>
*/logic* contains all Datalog code of VANDALIR.<br>
*/logic/vulnerabilities* contains the vulnerability rule sets.<br>
*/output* is used for Soufflé's output. The file print_vulnerable.csv contains the vulnerability report created by VANDALIR.<br>
*/profiler* can be used by the souffle profiler.<br>
*/profiler_html* can be used to store HTML reports of the Soufflé profiler.<br>
*/test* contains test cases used during the evaluation.<br>

## Data

You can find our raw data in the /data directory.

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

## License

VANDALIR is distributed under the MIT License.
