#!/bin/bash
num=0
while read line
do
words=`echo $line | wc -w`
num=`expr $num + 1`
char=`echo $line | wc -m`
echo "line number: $num words: $words characters: $char"
done < $1
