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
import os
import pathlib
import subprocess
import sys
import shutil


class ExecCommandError(Exception):

    def __init__(self, message, error):
        self.message = message
        self.error = error

    def __str__(self):
        return self.message


def exec_command(command, cwd=None):
    print(command)
    rc = subprocess.run(command, cwd=cwd, shell=True, check=False).returncode
    if rc != 0:
        raise ExecCommandError(
            f'Failed to exec \'{command}\': Error code {rc} ', rc)


def ensure_directory_exists(name):
    if not os.path.isdir(name):
        os.mkdir(name)


def parse(filepath, output, extra):

    ensure_directory_exists(output + '/facts/')

    filename = pathlib.Path(filepath).stem

    if filepath.endswith('.c') or filepath.endswith('.cpp'):
        ensure_directory_exists(output + '/llvm-ir')
        command = f'clang -emit-llvm {filepath} '
        command += '-o "{output}/llvm-ir/{filename}.bc"'
        exec_command(command)
        filepath = f'{output}/llvm-ir/{filename}.bc'
    elif filepath.endswith('.ll'):
        ensure_directory_exists(output + '/llvm-ir')
        command = f'llvm-as {filepath} '
        command += f'-o "{output}/llvm-ir/{filename}.bc"'
        exec_command(command)
        filepath = f'{output}/llvm-ir/{filename}.bc'
    elif not filepath.endswith('.bc'):
        raise RuntimeError('Unsupported file type.'
                           'File extension needs to be .c, .bc or .ll')

    command = f'{output}/bin/fact_parser -o {output}/facts/ {extra} '
    command += filepath
    exec_command(command)


def compile_datalog(vandalir_dir, output, extra, thread_count=4):
    print('Compiling Datalog...')
    ensure_directory_exists(output + '/bin')
    command = f'souffle "{vandalir_dir}/logic/main.dl" '
    command += f'-I {vandalir_dir}/logic/ '
    command += f'-I {vandalir_dir}/logic/core/ '
    command += f'-I {vandalir_dir}/logic/vulnerabilities/ '
    command += f'-o "{output}/bin/analyzer" '
    command += extra
    command += f'-j {thread_count}'
    exec_command(command)
    print('Datalog compiled.')


def compile_fact_parser(vandalir_dir, output):
    print('Compiling Fact Generator...')
    ensure_directory_exists(output + '/bin')
    command = f'CARGO_TARGET_DIR={output}/ cargo build -p fact_parser --release '
    exec_command(command, cwd=f"{vandalir_dir}")
    print('Fact Generator compiled.')
    shutil.copy(output + '/release/fact_parser',
                    output + '/bin/fact_parser')


def parse_args():
    parser = argparse.ArgumentParser(
        description='Run Datalog analysis on supplied file')

    parser.add_argument('file', type=str, help='file that should be analyzed', nargs='?', default=None)
    parser.add_argument('-c',
                        action='store_true',
                        dest='compile',
                        default=False,
                        help='use compilation in Soufflé')
    parser.add_argument('-pc',
                        action='store_true',
                        dest='previous_compile',
                        default=False,
                        help='use previous compiled version')
    parser.add_argument('-p',
                        action='store_true',
                        dest='profile',
                        default=False,
                        help='use the Soufflé profiler')
    parser.add_argument('-o',
                        type=str,
                        dest='output_dir',
                        required=True,
                        help='output directory (default: output)')
    parser.add_argument('-j',
                        type=int,
                        dest='thread_count',
                        default='4',
                        help='number of threads Soufflé may use (default: 4)')
    parser.add_argument('-m',
                        action='append',
                        dest='debug_macro',
                        default=None,
                        help='Debug MACRO')
    parser.add_argument('--config',
                        action='append',
                        dest='config',
                        default=[],
                        help='Extra config in format <KEY>=<VALUE>')

    return parser.parse_args()


def main(args):

    my_path = str(pathlib.Path(__file__).parent.absolute())
    output = os.path.abspath(args.output_dir)

    ensure_directory_exists(output)
    ensure_directory_exists(output + '/out/')

    compile_fact_parser(my_path, output)

    extra_options = ''
    if args.debug_macro:
        for macro in args.debug_macro:
            if macro:
                extra_options += f'DEBUG_{macro.upper()} '
        if extra_options:
            extra_options = f'-M"{extra_options.strip()}" '

    if (args.compile and not args.profile):
        compile_datalog(my_path, output, extra_options, args.thread_count)

    if args.file:
        # prepare facts
        extra_opt = ''
        for cfg in args.config:
          extra_opt += f' -c {cfg} '

        parse(os.path.abspath(args.file), output, extra_opt)

        # run logic
        if (args.previous_compile or args.compile) and not args.profile:
            # execute previously compiled
            command = f'{output}/bin/analyzer '
        else:
            command = f'souffle "{my_path}/logic/main.dl" '
            command += f'-I {my_path}/logic/ '
            command += f'-I {my_path}/logic/core/ '
            command += f'-I {my_path}/logic/vulnerabilities/ '
            command += extra_options
            if args.profile:
                command += f'-p {output}/profile '

        command += f'-F "{output}/facts/" -D "{output}/out" '
        command += '-j ' + str(args.thread_count)
        exec_command(command)

    if args.profile:
        rel_path = os.path.relpath(output + '/profile_html/report.html',
                                   my_path + '/logic')
        command = f'souffleprof "{output}/profile" '
        command += f'-j{rel_path} '
        exec_command(command, cwd=my_path + '/logic/')

    print('Execution finished output written to output directory')


if __name__ == '__main__':
    sys.exit(main(parse_args()))
