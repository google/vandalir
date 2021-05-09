import subprocess
import glob


path = "./sudo-1.9.5/"


def configure():
    subprocess.run(["autoreconf", "-i"], cwd=path, shell=True)
    subprocess.run(["export", "CC=clang-10"], cwd=path, shell=True)
    subprocess.run(["export", "CXX=/usr/lib/llvm-10/clang++"], cwd=path, shell=True)
    subprocess.run(["export", "RANLIB=llvm-ranlib-10"], cwd=path, shell=True)
    subprocess.run(["export", "CFLAGS=\" -flto -std=gnu99 \""], cwd=path, shell=True)
    subprocess.run(["export", "LDFLAGS=\" -flto -fuse-ld=gold \""], cwd=path, shell=True)
    subprocess.run(["./configure"], cwd=path, shell=True)


def change_makefiles():
    for makefile_path in glob.iglob(path + '**/Makefile', recursive=True):
        with open(makefile_path, 'r') as makefile:
            lines = makefile.readlines()
        for i in range(0, len(lines)):
            line = lines[i]
            if(line.startswith("LDFLAGS")):
                lines[i] = lines[i].replace("\n", "")+" -plugin-opt=emit-llvm\n"
        with open(makefile_path, 'w') as makefile:
            makefile.writelines(lines)
        print(makefile_path+" changed.")


def make():
    subprocess.run(["make"], cwd=path, shell=True)


def main():
    configure()
    #change_makefiles()
    make()


if __name__ == "__main__":
    main()
