import subprocess
import glob
import os
import csv
import sys


juliet_path = "./test/Juliet/"
cwe = "126"
juliet_report_path = "./jreports/"


def get_report(badgood, filename):

    testcase = filename.replace(".bc", "").replace(".ll", "").replace("-bad", "").replace("-good", "")

    with open("./output/print_vulnerable.csv") as csv_file:
        output = list()
        csv_reader = csv_file.readlines()
        for row in csv_reader:
            newLine = testcase+";"+badgood+";"+row
            output.append(newLine)
    return output


def run_file(cwe, badgood, filename):
    command = "./run.sh "+juliet_path+"CWE"+cwe+"/"+badgood+"/"+filename
    subprocess.call(command, shell=True)
    report = get_report(badgood, filename)
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


def run_cwe(cwe, badgood):
    cwe_dir = juliet_path+"CWE"+cwe+"/"
    badgood_dir = cwe_dir+badgood+"/"

    full_report = list()

    preprocess_folder(badgood_dir)

    numOfFiles = len(glob.glob1(badgood_dir, "*.ll"))
    processed = 0

    for subdir, dirs, files in os.walk(badgood_dir):
        for filename in files:
            if(filename.endswith(".ll")):
                file_report = run_file(cwe, badgood, filename)
                full_report.extend(file_report)
                processed += 1
                percentage = str(round((processed/numOfFiles)*100))
                print("Succesfully analyzed "+filename+" ["+percentage+"%]")
    full_report_str = "".join(full_report)
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


def main():
    evaluate_bad(cwe)


if __name__ == "__main__":
    main()
