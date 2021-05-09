import argparse
import sys
import os
import subprocess


def parseArgs(parser):
    parser.add_argument('file', action='store', help='file that should be analyzed')
    parser.add_argument('-c', action='store_true', dest='compile', default=False, help='use compilation in Soufflé')
    parser.add_argument('-p', action='store_true', dest='profile', default=False, help='use the Soufflé profiler')


def parse(filepath):

    folder, filename = os.path.split(filepath)
    filename = filename[:-2]

    if(filepath.endswith(".c")):
        command = "clang -S -emit-llvm \""+filepath+"\" -o \"./llvm-ir/"+filename+".ll\""
        os.system(command)
        command2 = "python3 Parser.py ./llvm-ir/"+filename+".ll"
        subprocess.call(command2, shell=True)
    elif(filepath.endswith(".ll") or filepath.endswith(".bc")):
        command = "python3 Parser.py "+filepath
        subprocess.call(command, shell=True)
    else:
        print("Unsupported file type. File extension needs to be .c, .bc or .ll")


def run(filepath, compile, profile):
    command = "souffle \"./logic/main.dl\" "
    if(compile):
        command += "--compile "
    command += "-F \"./facts\" -D \"./output\" "
    if(profile):
        command += "-p ./profile "
    command += "-j 4"

    subprocess.call(command, shell=True)

    if(profile):
        command = "souffle-profile \"./profile\" -j"
        subprocess.call(command, shell=True)

    if(compile):
        subprocess.call("rm ./*.cpp", shell=True)

    print("Execution finished output written to output directory")


def main():
    filepath = args.file
    compile = args.compile
    profile = args.profile

    parse(filepath)
    run(filepath, compile, profile)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Run Datalog analysis on supplied file')
    parseArgs(parser)
    args = parser.parse_args(sys.argv[1:])
    main()
