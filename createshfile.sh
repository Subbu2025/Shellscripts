#!/bin/bash

# This is a shell script to create a shell script file automatically with an input of a filename from the user

# Prompt the user to enter the filename
echo "Enter the filename:"
read usrfilename

# Create an empty shell script file
touch "$usrfilename"

# Add execute permission to the shell script file
chmod +x "$usrfilename"

echo "Hey $USER, Your file is created and ready to make a shell script with excute permission."
