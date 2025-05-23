#!/bin/bash
if [ $# -ne 2 ]
then
echo "we accept only two input arguments"
exit
fi
if [ $1 -gt $2 ]
then 
	echo "$1 is greater than $2"
else 
	echo "$2 is greater than $1"
fi
