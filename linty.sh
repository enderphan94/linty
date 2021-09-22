#!/bin/bash

if [ "$1" == "-h" ] || [ "$1" == "" ]
then
	echo "linty <filename.sol>"
	exit 0 
fi

file=$1

solhint --init
echo "{
  \"extends\": \"solhint:recommended\"
}" > .solhint.json
echo
echo "======SOLHINT======"
echo
solhint $file
echo
echo "======TYPOS Check======"
echo
cspell-cli $file
echo
echo "======uint Check======"
echo
count=$(grep -wn "uint" $file | wc -l|tr -d ' ')
if [ -n "$count" ]; then
	echo "$count uint place(s) have been found"
else
	echo "No uint found"
fi
echo
echo "======require() Check======"
echo
gr=$(egrep "require\(.*\)" $file| egrep -v "," | wc -l|tr -d ' ')  #we can use "require\([^,]*\);$"
if [ -n "$gr" ]; then
	echo "$gr require() without error message have been found"
	egrep -n "require\(.*\)" $file| egrep -v ","
else
	echo "All good"
fi
