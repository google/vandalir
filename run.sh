FILEPATH=${1:-test/bo.c}
FILE="$(basename $FILEPATH)"
FILENAME=$(echo "$FILE" | cut -f 1 -d '.')
FILEEXTENSION="${FILE##*.}"
if [ "$FILEEXTENSION" != "c" ]
then
  echo "file extension needs to be .c"
  exit 1
fi
clang -S -emit-llvm "$FILEPATH" -o "./llvm-ir/$FILENAME.ll"
python3 Parser.py "./llvm-ir/$FILENAME.ll"
souffle "./logic/main.dl" -F "./facts" -D "./output" -p "./profile" -j 4
souffle-profile "./profile" -j
echo "execution finished output written to output directory"