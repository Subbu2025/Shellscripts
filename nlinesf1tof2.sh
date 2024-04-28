#!/bin/bash

# This script will copy the specifed no of lines from a source file to destination file

#Propmt user to give the source file path

read -p "Enter the Source file: " source_file

#Prompt user to give the destination file path

read -p "Enter the destination file path: " destination_file

# Define a function to copy lines from source to destination
source-destination()
{
#Prompt the user to specify the no of lines to copy from source to destination
read -p "Specify the no of line you want to copy from source to destination: " count

if [[ "$count" != "" ]]
then
  if [[ "$count" =~ ^[0-9]+$ ]]
  then
  head -n "$count" "$source_file" > "$destination_file"
  echo "Your specified no of $count lines are copied from $source_file to $destination_file"
  else 
  echo "Input must be an positive integer only"
  source-destination
  fi
else
echo "Input is mandatory to process your request"
source-destination
fi
}
# Call the function to start the process
source-destination
