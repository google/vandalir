# Copyright (c) 2023 Google LLC
#
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this software and associated documentation files (the "Software"), to deal in
# the Software without restriction, including without limitation the rights to
# use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
# the Software, and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

import argparse
import multiprocessing.pool
import os
import pathlib
import shutil
import subprocess
import sys

import numpy as np

CWEs = ['121', '129', '131', '193', '242', '805', '806', '134', '415']

TESTS_DIR = '/tests/juliet'

class ExecCommandError(Exception):

    def __init__(self, message, error):
        self.message = message
        self.error = error

    def __str__(self):
        return self.message


def exec_command(command, cwd=None):
    rc = subprocess.run(command, cwd=cwd, shell=True, check=False).returncode
    if rc != 0:
        raise ExecCommandError(
            f'Failed to exec \'{command}\': Error code {rc} ', rc)


class JulietTest:

    REPORT_FILE = '/juliet_evaluation.txt'
    VANDALIR_REPORT = '/RESULTS.csv'

    def __init__(self,
                 test_dir,
                 output_dir,
                 num_threads=4,
                 thread_pool_size=16):
        self._input_dir = test_dir
        self._output_dir = output_dir
        self._num_threads = num_threads
        self._thread_pool_size = thread_pool_size

        self._report = open(output_dir + JulietTest.REPORT_FILE, 'a+',
                            encoding='utf8')
        self._show = True

    # get report of current soufflé run
    def _get_report(self, filename, out):
        output = []
        with open(out + self.VANDALIR_REPORT, 'r', encoding='utf8') as csv_file:
            csv_reader = csv_file.readlines()
            for row in csv_reader:
                output.append((filename, row))
        return output

    def _print_and_report(self, msg):
        self._report.write(msg + '\n')
        print(msg)

    # run one testcase
    def _run(self, badgood, filename, test_id, total):
        percentage = str(round(100 * test_id / total))

        out_dir = self._output_dir + str(test_id)

        # create folders
        pathlib.Path(out_dir).mkdir(parents=True, exist_ok=True)

        # run
        command = self._output_dir + '/bin/vandalir run '
        command += '-o ' + out_dir + ' '
        command += str(filename.absolute()) + ' '
        exec_command(command)

        report = self._get_report(filename.name, out_dir + "/out")
        print('Analysis successful ' + filename.name + ' || id:' +
              str(test_id) + ' [' + badgood + ':' + percentage + '%]')

        # clean up directories
        if os.path.isdir(out_dir):
            shutil.rmtree(out_dir)
        return report

    # run all testcases (good OR bad) of one CWE
    def _run_cwe(self, cwe, badgood):
        results = []
        cwe_dir = self._input_dir + '/CWE' + cwe + '/' + badgood + '/'

        file_list = sorted(pathlib.Path(cwe_dir).rglob('*.bc'))
        num_total = len(file_list)

        # run analysis in parallel
        pool = multiprocessing.pool.ThreadPool(self._thread_pool_size)
        for test_id, filename in enumerate(file_list):
            pool.apply_async(self._run,
                             args=(badgood, filename, test_id + 1, num_total),
                             callback=results.extend)
        pool.close()
        pool.join()
        print('All ' + badgood + ' files processed')

        vuln_found_list = []
        warn_found_list = []
        for filename, msg in results:
            if 'Vulnerability' in msg:
                vuln_found_list.append(filename)
            if 'Warning' in msg:
                warn_found_list.append(filename)

        results = sorted(results, key=lambda el: el[0])
        # create final report
        full_report_str = ''.join(file + ';' + msg for file, msg in results)
        if badgood == 'bad':
            with open(self._output_dir + '/CWE' + cwe + '_report_vulns.csv',
                      mode='w', encoding='utf8') as report:
                report.write(full_report_str)

            filename_list = [f.name for f in file_list]
            false_negative_list = np.setdiff1d(filename_list, vuln_found_list)
            false_negatives_str = '\n'.join(false_negative_list)
            with open(self._output_dir + '/CWE' + cwe + '_report_fn.csv',
                      mode='w', encoding='utf8') as report:
                report.write(false_negatives_str)

            num_vulns = len(vuln_found_list)
            num_warns = len(warn_found_list)
            num_false_neg = len(false_negative_list)
            num_true_positives = num_total - num_false_neg
            num_false_positives = num_vulns - num_true_positives
            return (num_total, num_vulns, num_warns, num_false_neg,
                    num_true_positives, num_false_positives)

        elif badgood == 'good':
            with open(self._output_dir + '/CWE' + cwe + '_report_fp.csv',
                      mode='w', encoding='utf8') as report:
                report.write(full_report_str)

            num_vulns = len(vuln_found_list)
            num_warns = len(warn_found_list)
            num_false_neg = 0
            num_true_positives = 0
            num_false_positives = len(vuln_found_list)
            return (num_total, num_vulns, num_warns, num_false_neg,
                    num_true_positives, num_false_positives)

    def evaluate_full(self, cwe):
        print('Processing CWE:' + cwe + ': bad')
        (num_total, num_vulns, num_warns, num_false_neg, num_true_positives,
         num_bad_false_positives) = self._run_cwe(cwe, 'bad')

        print('Processing CWE:' + cwe + ': good')
        (num_total_good, _, num_warns_good, _, _,
         num_good_false_positives) = self._run_cwe(cwe, 'good')
        num_total_good = num_total
        num_warns_good = 0
        num_good_false_positives = 0

        self._print_and_report('\n')
        self._print_and_report('CWE: ' + str(cwe))
        self._print_and_report('Testcases(bad/good): ' + str(num_total) + '/' +
                               str(num_total_good))
        self._print_and_report('Vulns: ' + str(num_vulns))
        self._print_and_report('Warnings: ' + str(num_warns))
        self._print_and_report(
            'True Positives: ' + str(num_true_positives) + ' [' +
            str(round(100 * num_true_positives / num_total, 1)) + '%]')
        self._print_and_report('False Negatives: ' + str(num_false_neg) + ' [' +
                               str(round(100 * num_false_neg / num_total, 1)) +
                               '%]')
        self._print_and_report(
            'False Positives: ' + str(num_bad_false_positives) + ' [' +
            str(round(100 * num_bad_false_positives / num_total, 1)) + '%]')
        self._print_and_report('False Positives Warnings (in patched): ' +
                               str(num_warns_good))
        self._print_and_report(
            'False Positives (in patched): ' + str(num_good_false_positives) +
            ' [' +
            str(round(100 * num_good_false_positives / num_total_good, 1)) +
            '%]')


def ensure_directory_exists(name):
    if not os.path.isdir(name):
        os.mkdir(name)


def compile_vandalir(vandalir_dir, output, extra, thread_count=4):
    print('Compiling Fact Generator...')
    ensure_directory_exists(output + '/bin')
    command = 'VANDALIR_SOUFFLE_DEBUG=NO_STDOUT_PRINT '
    command += f'CARGO_TARGET_DIR={output}/ cargo build -p vandalir --release '
    exec_command(command, cwd=f"{vandalir_dir}")
    print('Fact Generator compiled.')
    shutil.copy(output + '/release/vandalir',
                    output + '/bin/vandalir')


def parse_args():
    """Parses command line arguments."""

    parser = argparse.ArgumentParser(
        description='Run VANDALIR for Juliet Test Suite')

    parser.add_argument('-p',
                        type=str,
                        dest='vandalir_project',
                        required=False,
                        default=None,
                        help='VANDALIR project directory')
    parser.add_argument('-o',
                        type=str,
                        dest='output',
                        required=True,
                        help='output directory')
    parser.add_argument('-j',
                        type=int,
                        dest='thread_count',
                        default='4',
                        help='number of threads Soufflé may use (default: 4)')
    parser.add_argument('-t',
                        type=int,
                        dest='thread_pool_size',
                        default='16',
                        help='Pool thread size (default: 16)')
    parser.add_argument('-c',
                        type=str,
                        dest='cwe',
                        default=None,
                        help='CWE to test')

    return parser.parse_args()


def main(args):

    test_dir = str(pathlib.Path(__file__).parent.absolute()) + TESTS_DIR
    if args.vandalir_project:
        vandalir_dir = os.path.abspath(args.vandalir_project)
    else:
        vandalir_dir = str(pathlib.Path(__file__).parent.absolute())
    output = os.path.abspath(args.output)

    ensure_directory_exists(output)

    compile_vandalir(vandalir_dir, output, "", args.thread_count)

    test = JulietTest(test_dir, output, args.thread_count,
                      args.thread_pool_size)

    if args.cwe:
        if args.cwe not in CWEs:
            print('Unknown CWE type: ' + args.cwe)
            return -1
        test.evaluate_full(args.cwe)
    else:
        for cwe in CWEs:
            test.evaluate_full(cwe)


if __name__ == '__main__':
    sys.exit(main(parse_args()))
