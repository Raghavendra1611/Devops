#!/bin/bash
read -p "Enter the name to check:" name
if [ -f "$name" ]; then
echo "The given name is a file"
elif [ -d "$name" ]; then
echo "The given name is directory"
else
echo "The given name does not exist"
exit
fi
