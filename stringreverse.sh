#!/bin/bash

# This script will give you the reverse string for the given string
# Function to reverse a string
reverse_string()
{
   input_string=$1

   reversed_string=""
  length=${#input_string}

  for (( i=length-1; i>=0; i--))
  do
     reversed_string="$reversed_string${input_string:i:1}"
  done
  echo "$reversed_string"
}
# Prompt the user for input 
read -p "Enter your string: " input
# Call the reverse_string function and display the result
reversed=$(reverse_string "$input")
 echo "Reversed String: $reversed"
