#!/bin/bash
#set -x
read -p "Enter the file name to pass emp details: " file
read -p "Enter the age to check: " check
sed '1d' $file > temp
k=0
while read line
do
	age=`echo "$line"|awk -F " " '{ print $5}'`
if [ $age -gt $check ]
then
	echo "$line"|awk -F " " '{ print $2}'
else
	k=$(($k + 1))
fi
done < temp
if [ $k -gt 0 ]
	then echo " $k number of the employees present in org less than age $check"
else
	exit
fi
