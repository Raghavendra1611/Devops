#!/bin/bash
read -p "Enter the pattern to check: " name
list_of_files=`grep -ilR "$name" *`
if [ $? -ne 0 ]
then
echo "The pattern not found in any of the files"
else
echo "The below list of files having the linux pattern:"
#grep -ilR "linux" *
echo "$list_of_files"
fi
