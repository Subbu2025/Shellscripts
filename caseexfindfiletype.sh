#!/bin/bash

#This script is useful find the filetype using a case statement

#Promopt the user to enter the required directory path
echo "Enter the Directory Path"
read dir_path

#Check if the directory exists or not
if [ ! -d "$dir_path" ]
then echo "Directory "$dir_path" does not exist"
exit 1
fi

for name in "$dir_path"/*
do
 item_name=$(basename "$name")
 
 if [ -d "$name" ]
  then echo "$item_name @is a sub directory"
 elif [ -f "$name" ]
 then  

#The following code extracts the extension from each filename. 
#It uses shell parameter expansion ${filename##*.} to remove everything from the beginning of the filename up to the last dot (.), leaving only the extension.

ext="${item_name##*.}"

#The following section uses a case statement to check the file extension ($ext) and print a corresponding message based on the type of file.

case "$ext" in
c) echo "$item_name :is a C Source file"
;;
o) echo "$item_name :is an Object file"
;;
sh) echo "$item_name :is a Shell script"
;;
txt) echo "$item_name : is a Text file"
;;
"awk") echo "$item_name : is a awk file"
;;
pub) echo "$item_name : is public key file"
;;
pdf) echo "$item_name: is a pdf file"
;;
jpg) echo "$item_name is an image file"
;;
png) echo "$item_name is an image file"
;;
*) 
# Get the file type using the file command
file_type=$(file -b "$name")
echo "$item_name -> Type: $file_type"
;;

esac

else 

echo "$item_name : is unknown"

fi
# The following line marks the end of the loop
done

