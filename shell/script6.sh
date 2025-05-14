#!/bin/bash
#echo "enter name to search as file/directory"
#read $name
#if [ -f $name]
#then echo "$name is a file"
#elif [ -d$name]
#echo "$name is a directory"
#else echo "does not exist"
#fi
#!/bin/bash
echo "Enter the name to check:"
read name
if [ -f $name ]
then
echo "The given name is a file"
elif [ -d $name ]
echo "The given name is directory"
else
echo "The given name is not exist"
fi
