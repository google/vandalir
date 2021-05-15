import os
from pathlib import Path


path = "./"
CWEs = ["121", "123", "126", "134", "242"]


def get_file_list(cwe):
    print("Creating file list for CWE"+cwe)

    juliet_testcases_path = path+"testcases/"
    cwe_testcase_path = ""
    vuln_desc = ""

    for p in Path(juliet_testcases_path).rglob('CWE'+cwe+'*'):
        vuln_desc = str(p.name)
        break

    cwe_testcase_path = juliet_testcases_path+vuln_desc+"/"

    c_list = list()

    for p in Path(cwe_testcase_path).rglob(vuln_desc+'__*.c'):
        filenameSplit = p.name.rsplit("_", 1)
        filename = filenameSplit[0]+"_"+filenameSplit[1][:2]

        # print(filename)
        if("_wchar_" not in filename and "_w32_" not in filename):
            c_list.append(filename)

    c_list = list(set(c_list))
    c_list.sort()
    filestr = "\n".join(c_list)

    with open(path+'bin/CWE'+cwe+'/filelist_CWE'+cwe+'.csv', mode='w') as filelist:
        filelist.write(filestr)

    print("Successfully created file list for CWE"+cwe)


def configure():
    print("configure")
    os.environ['CC'] = "clang-10"
    os.environ['CXX'] = "/usr/lib/llvm-10/bin/clang++"
    os.environ['RANLIB'] = "llvm-ranlib-10"
    os.environ['CFLAGS'] = "-flto -std=gnu99"
    os.environ['CXXFLAGS'] = "-flto"
    os.environ['LDFLAGS'] = "-flto -fuse-ld=gold -Wl,-plugin-opt=emit-llvm"


def make(cwe):
    os.system("python3 ./juliet.py -m "+cwe)


def generate(cwe):
    print("generate")
    os.system("python3 ./juliet.py -c -g "+cwe)


def process_cwe(cwe):
    configure()
    generate(cwe)
    make(cwe)
    get_file_list(cwe)


def main():
    for cwe in CWEs:
        process_cwe(cwe)


if __name__ == "__main__":
    main()
