#!/bin/bash
# Getting the list of users logged in the system to a file
#read the file name from the user
echo "Enter the file name";
read filename;
# Getting the users information from /etc/passwd and redirecting to a file and sending an acknowledgement to the user
cat /etc/passwd > $filename &&  echo "Hey $USER, Your file is created succesfully with all users data";
#Displaying the users data on the terminal
echo "The following users information is saved in the $filename";
#cut -d: -f1 $filename;
awk -F ':' '{print $1}' $filename;
echo "Hey $USER, You are going to add this script into your github repository"
