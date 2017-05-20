#A bash-shell script to replace all occurrences of a word by anohter work in a file
#Written by Lei Liu, Jan 17, 2017

#!/bin/bash
if [ $# -eq 4 ] && [ -f $1 ]
	then
	sed 's/'$2'/'$3'/g' $1 > $4
	cat $1
	echo
	cat $4
else
	echo "Error: Please supply all parameters"
	echo "usage: replaceWord <inFile> <word> <repWord> <outFile>"
	echo "replace all occurences of a word by another word in a file"
	exit 1
fi
