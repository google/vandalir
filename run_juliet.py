import subprocess
import glob
import os
import shutil
import multiprocessing as mp


juliet_path = "./test/Juliet/"
CWEs = ["121", "242"]
juliet_report_path = "./jreports/"

results = []

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
def run_file(cwe, badgood, filename, id):
    facts_dir = "facts/"+id
    output_dir = "output/"+id

    command = "./run.sh "+juliet_path+"CWE"+cwe+"/"+badgood+"/"+filename+" "
    command += "-f "+facts_dir+" "
    command += "-o "+output_dir+" "
    command += "-j 1"
    subprocess.call(command, shell=True)
    report = get_report(badgood, filename, output_dir)
    print("Succesfully analyzed "+filename+" id:"+id)

    #clean up directories
    if(os.path.isdir(facts_dir)):
        shutil.rmtree(facts_dir)
    if(os.path.isdir(output_dir)):
        shutil.rmtree(output_dir)
    return report


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
    cwe_dir = juliet_path+"CWE"+cwe+"/"
    badgood_dir = cwe_dir+badgood+"/"

    preprocess_folder(badgood_dir)

    # numOfFiles = len(glob.glob1(badgood_dir, "*.ll"))
    # processed = 0

    file_list = list()
    # full_report = list()

    for subdir, dirs, files in os.walk(badgood_dir):
        for filename in files:
            if(filename.endswith(".ll")):
                file_list.append(filename)

    pool = mp.Pool(6)
    [pool.apply_async(run_file, args=(cwe, badgood, filename, str(id+1)), callback=collect_reports) for id, filename in enumerate(file_list)]
    pool.close()
    pool.join()

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
    evaluate_good("121")


if __name__ == "__main__":
    main()
