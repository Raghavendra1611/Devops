#!/bin/bash
read -p "Enter the no's to add: " num
add=0
	for i in $num
do
	add=$(($i + $add))
done
	echo "sum of given num:$num is $add"
