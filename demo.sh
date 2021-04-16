rm ./facts/*
rm ./output/*

echo "run.sh -f ./test/sudo.ll"
read -p ""
echo "python3 Parser.py \"./test/sudo.ll\""
python3 Parser.py "./test/sudo.ll"
read -p ""
echo "souffle ./logic/main.dl -F ./facts -D ./output -j 4" 
souffle ./logic/main.dl -F ./facts -D ./output -j 4
echo "execution finished output written to output directory"