#!/bin/bash
echo "Enter a number"
read num
temp="$num"
fact=1
while [ $num -gt 1 ]
do
  fact=$((fact * num))  #fact = fact * num
  num=$((num - 1))      #num = num - 1
done
echo "factorial of $temp is $fact"

