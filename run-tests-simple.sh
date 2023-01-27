#!/bin/bash
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


PROG=$0
OS=$(uname -s)
MY_DIR=$(realpath $(dirname $0))

help()
{
    echo "Usage: ${PROG} ${HELP_STR}"
    exit 2
}

if [ "${OS}" = "Linux" ];
then
  SHORT=o:,r:,h
  LONG=output:,report:,help
  OPTS=$(getopt -a -n ${PROG} --options $SHORT --longoptions $LONG -- "$@")
  HELP_STR="[ -o | --output ] [ -r | --report ] [ -h | --help ]"
else
  if [ "${OS}" = "Darwin" ]
  then
    OPTS=$(getopt o:r:h $*)
    HELP_STR="[ -o ] [ -r ] [ -h ]"
  else
    echo "Unsupported OS: ${OS}"
    exit 2
  fi
fi

VALID_ARGUMENTS=$# # Returns the count of arguments that are in short or long options

if [ "$VALID_ARGUMENTS" -eq 0 ]; then
  help
fi

eval set -- "$OPTS"

while :
do
  case "$1" in
    -o | --output )
      OUTPUT=$(realpath ${2})
      shift 2
      ;;
    -r | --report )
      REPORT=$(realpath ${2})
      shift 2
      ;;
    -h | --help)
      help
      ;;
    --)
      shift;
      break
      ;;
    *)
      echo "Unexpected option: $1"
      help
      ;;
  esac
done


if [ -z ${OUTPUT} ];
then
  echo "Error: OUTPUT folder is not specified."
  exit 1
fi

mkdir -p ${OUTPUT}/tests
rm -f ${REPORT}

# compile simple tests
DEST=${OUTPUT}/tests make -C ${MY_DIR}/tests/simple

if [ "${OS}" = "Linux" ];
then
  # compile vandalir
  python3 ${MY_DIR}/run.py -o ${OUTPUT} -c
fi

for i in  `find ${OUTPUT}/tests/ -name \*.bc`;
do
  echo "Running $i test"
  IN=$(realpath $i)
  python3 ${MY_DIR}/run.py -o ${OUTPUT} $IN

  if [ ${REPORT} ]
  then
    echo "!!!!"
    echo ">>>> ${i#${OUTPUT}/tests/}" >> ${REPORT}
    cat ${OUTPUT}/out/RESULTS.csv >> ${REPORT}
    echo "<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<" >> ${REPORT}
    echo "" >> ${REPORT}
  fi
done

