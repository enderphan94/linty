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