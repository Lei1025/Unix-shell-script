#!/bin/bash
#Written by Lei Liu, Jan 23, 2017
#A bash-shell script to output fibonacci numbers

if [ $# != 1 ]
then
	echo "Error: Please supply an integer."
	echo "Usage: fibonacci <integer>"
	exit 1
elif [ $1 -eq 0 ]
then
	fn=0
elif [ $1 == 1 ]
then
	fn=1
elif [ $1 -ge 2 ]
then
	f0=0
	f1=1	
for (( i=1;i<$1;i++ ))
	do 
	fn=$((f0+f1))
	f0=$f1
	f1=$fn
done
fi
echo "Fibonacci number of $1 is $fn"	
