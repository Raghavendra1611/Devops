#!/bin/bash
#set -x
read -p "Enter the file name to pass emp details: " file
read -p "Enter the age to check: " check
sed '1d' $file > temp
k=0
j=0
while read line
do
	age=`echo "$line"|awk -F " " '{ print $5}'`
 j=$(($j + 1))

	if [ $age -gt $check ]
then
	echo "$line"|awk -F " " '{ print $2}'
else
	k=$(($k + 1))
fi
done < temp
if [ $k -eq $j ]
	then echo " none of the employees present in org is greater than age $check"
else
	echo "are the employees above age $check"
fi
