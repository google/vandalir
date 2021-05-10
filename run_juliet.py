import subprocess
import glob
import os
import shutil
from multiprocessing.pool import ThreadPool


juliet_path = "./test/Juliet/"
CWEs = ["121", "242"]
juliet_report_path = "./jreports/"

results = []

PROCS_FOR_LARGE = 1
LARGE_SIZE = 20000
SKIP_LARGE = True
THREADS = 4


# get report of current soufflé run
def get_report(badgood, filename, output_dir):

    testcase = filename.replace(".bc", "").replace(".ll", "").replace("-bad", "").replace("-good", "")

    with open(output_dir+"/print_vulnerable.csv") as csv_file:
        output = list()
        csv_reader = csv_file.readlines()
        for row in csv_reader:
            newLine = testcase+";"+badgood+";"+row
            output.append(newLine)
    return output


# run one testcase
def run_file(cwe, badgood, filename, id, processes):
    facts_dir = "facts/"+id
    output_dir = "output/"+id
    filepath = juliet_path+"CWE"+cwe+"/"+badgood+"/"+filename

    if(os.path.getsize(filepath) > LARGE_SIZE):
        processes = str(PROCS_FOR_LARGE)
        if(SKIP_LARGE):
            print("Skipped: "+filename+" id:"+id)
            return ""

    # create files
    if(not os.path.isdir(output_dir)):
        os.mkdir(output_dir)

    if(not os.path.isdir(facts_dir)):
        os.mkdir(facts_dir)

    # parse
    command_parse = "python3 Parser.py "+filepath+" "
    command_parse += "-o "+facts_dir
    subprocess.call(command_parse, shell=True)

    # run
    command = "bin/analyzer "+filepath+" "
    command += "-F "+facts_dir+" "
    command += "-D "+output_dir+" "
    command += "-j "+processes+" "
    subprocess.call(command, shell=True)
    report = get_report(badgood, filename, output_dir)
    print("Succesfully analyzed "+filename+" id:"+id)

    # clean up directories
    if(os.path.isdir(facts_dir)):
        shutil.rmtree(facts_dir)
    if(os.path.isdir(output_dir)):
        shutil.rmtree(output_dir)
    return report


def compile_datalog():
    print("Compiling Datalog...")
    command = "souffle \"logic/main.dl\" -o bin/analyzer"
    subprocess.call(command, shell=True)
    print("Datalog compiled.")

# add .bc ending to bitcodefiles and decompile to .ll files
def preprocess_folder(folder):
    for subdir, dirs, files in os.walk(folder):
        for filename in files:
            filepath = folder + filename
            if(not filename.endswith(".bc") and not filename.endswith(".ll")):
                os.rename(filepath, filepath+".bc")

    for subdir, dirs, files in os.walk(folder):
        for filename in files:
            filepath = folder + filename
            if(filename.endswith(".bc") and not os.path.isfile(str(filepath)[:-3]+".ll")):
                os.system("llvm-dis-10 "+filepath)
    print("Preprocessing successfully finished")


def collect_reports(report):
    global results
    results.extend(report)


# run all testcases (good OR bad) of one CWE
def run_cwe(cwe, badgood):
    global results

    results = []
    cwe_dir = juliet_path+"CWE"+cwe+"/"
    badgood_dir = cwe_dir+badgood+"/"

    preprocess_folder(badgood_dir)

    # numOfFiles = len(glob.glob1(badgood_dir, "*.ll"))
    # processed = 0

    small_file_list = list()
    # full_report = list()

    for subdir, dirs, files in os.walk(badgood_dir):
        for filename in files:
            if(filename.endswith(".ll")):
                # filepath = badgood_dir + filename
                small_file_list.append(filename)

    pool = ThreadPool(THREADS)
    [pool.apply_async(run_file, args=(cwe, badgood, filename, str(id+1), "1"), callback=collect_reports)
     for id, filename in enumerate(small_file_list)]
    pool.close()
    pool.join()
    print("Small files processed")

    # non parallel large file processing
    '''
    for id, filename in enumerate(large_file_list):
        res = run_file(cwe, badgood, filename, str(id+1), str(1))
        results.extend(res)
    '''
    full_report_str = "".join(results)
    with open(juliet_report_path+'jreport_cwe'+cwe+'_'+badgood+'.csv', mode='w') as report:
        report.write(full_report_str)


def evaluate_good(cwe):
    print("Processing CWE"+cwe+" good")
    run_cwe(cwe, "good")


def evaluate_bad(cwe):
    print("Processing CWE"+cwe+" bad")
    run_cwe(cwe, "bad")


def evaluate_full(cwe):
    print("Processing CWE"+cwe+" bad")
    run_cwe(cwe, "bad")
    print("Processing CWE"+cwe+" good")
    run_cwe(cwe, "good")


def evaluate_all_cwes():
    for cwe in CWEs:
        evaluate_full(cwe)


def main():
    compile_datalog()
    evaluate_bad("121")


if __name__ == "__main__":
    main()
