#!/bin/bash
#set -x
#sleep 30
read -p "enter a number: " num
if [ $num -eq 5 ]
then
	echo "$num is five"
else
	echo "$num is not a five"
fi
