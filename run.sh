while getopts f:cp flag
do
    case "${flag}" in
        f) FILEPATH="${OPTARG}" ;;
        c) CFLAG="--compile";;
        p) PFLAG="-p ./profile";;
    esac
done
echo "filepath: $FILEPATH"
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
souffle "./logic/main.dl" $CFLAG -F "./facts" -D "./output" $PFLAG -j 4
[[ -z "$PFLAG" ]] || souffle-profile "./profile" -j
echo "execution finished output written to output directory"