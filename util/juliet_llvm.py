import subprocess
import glob
import os


path = "./"
CWEs = ["121", "126", "242"]


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


def main():
    for cwe in CWEs:
        process_cwe(cwe)


if __name__ == "__main__":
    main()
