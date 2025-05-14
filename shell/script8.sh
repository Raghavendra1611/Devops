#!/bin/bash
num=0
while read line
do
words=`echo $line"|wc -w`
num=`expr $num + 1`
char=`echo $line"|wc -m
echo "$num: $words: $char"

done < $1

