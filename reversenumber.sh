#!/bin/bash
# This script will give the output a Reverse Number for the Input Number
#Prompt the user to enter a input number
read -p "Enter the Number: " num
# Check if the input is empty or non-numeric
if [[ ! $num || ! $num =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi
rev_num=0

# Logic 
while [ $num -gt 0 ]
do
	remainder=$(( $num % 10 ))
	rev_num=$(( $rev_num * 10 + $remainder ))
	num=$(( $num/10 ))
done

# Display the Output
echo "Reverse Number: $rev_num"
