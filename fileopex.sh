#!/bin/bash

#This shell script is get an idea about different file test operators in Bash

#Prompt the User to enter the file path
echo "Hey $USER, Enter the file path:"

read filepath
#Extract the filename using basename
#It's used to extract the filename component from a given path.
#The basename command reads the String parameter, deletes any prefix that ends with a / (slash) and any specified Suffix parameter, and writes the remaining base file name to standard output.   
filename=$(basename "$filepath")
echo "Now you are going to test this file: $filename parameter"
# Check if file exists
if [ -e $filepath ]
then
echo "$filename is exists"
else
echo "$filename does not exists"
fi
# Check if file is regular file or not
if [ -f $filepath ]
then
echo "$filename is a regular file"
else
echo "$filename is not a regular file"
fi
# Check if file is character based file or not
if [ -c $filepath ]
then
echo "$filename is a character based file"
else
echo "$filename is not a character based file"
fi
# Check if file is directory or not
if [ -d $filepath ]
then
echo "$filename is a directory"
else
echo "$filename is not a directory"
fi
# Check if file is readable file or not
if [ -r $filepath ]
then
echo "$filename is a readable file"
else
echo "$filename is not a readable file"
fi
# Check if file is exits and has a size greater than zero file or not
if [ -s $filepath ]
then
echo "$filename has a size greater than zero"
else
echo "$filename has a size greater than zero"
fi
# Check if file is writable file or not
if [ -w $filepath ]
then
echo "$filename is a writable file"
else
echo "$filename is not a writable file"
fi
# Check if file is Executable file or not
if [ -x $filepath ]
then
echo "$filename is an executable file"
else
echo "$filename is not an executable file"
fi
# Check if current user is the file owner or not
if [ -o $filepath ]
then
echo "$USER is the owner of this $filename"
else
echo "$USER is not the owner of this $filename"
fi



