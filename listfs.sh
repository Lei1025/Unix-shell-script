#A bash-shell script to list all regular files in the current directory that are smaller than n bytes (n is an integer argument).
#!/bin/bash
#Written by Lei Liu, Jan 16, 2017
if [ -d $1 ] && [ $# -eq 2 ] && [ $2 -gt 0 ]
	then
	echo "All files and directories in $1 directory smaller than $2 bytes are:"
	find $1 -size -${2}c
	else
	echo "Error: Please supply the directory name to use and the size n in bytes"
	echo "usage: listfs <directory_name> <size_n>"
	echo "list the files and directories in a given <directoryz_name> along with their counts"
	exit 1
fi
