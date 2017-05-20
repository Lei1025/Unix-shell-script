#!/bin/bash
#Wrtten by Lei Liu, Jan 23, 2017
#A bash-shell script to compress files

if [ $# -eq 0 ]
then	
	echo "Error: Please enter the correct parameter"
	echo "Usage: minimize <extension list>"
	echo "Example: minimize *.doc *jpg"
	exit 1
fi

total=0

for file in $*
do
	echo "compressing......$file"
	gzip $file
	let total=$total+1	
done
echo "A total of $total files has been minimized"
