#A bash-shell script to list the names of directories and files separately, and display the total number of directories and files.
#!/bin/bash
#Written by Lei Liu, Jan 15, 2017
#Error checking for the directory name
if [ -d $1 ]
	then
	echo "Directories in $1 :"
	find $1 -type d 
	echo
	echo "Files in test:"
	find $1 -type f
	echo
	echo There are `ls $1 -l | grep "^d" | wc -l` deirectories and `find $1 -type f | wc -l` files
	else
	echo "Error: Please supply the directory name to use"
	echo "usage: listfd <directory_name>"
	echo "list the files and directories in a given <directory_name> along with their counts"
	exit 1
fi

