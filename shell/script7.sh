#!/bin/bash
read -p "Enter the pattern to check: " name
list_of_files=`grep -ilR "$name" *`
if [ $? -ne 0 ]
then
echo "The $name pattern not found in any of the files"
else
echo "The below list of files having the $name pattern:"
echo "$list_of_files"
fi
