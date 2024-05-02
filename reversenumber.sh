#!/bin/bash
# This script will give the output a Reverse Number for the Input Number
#Prompt the user to enter a input number
read -p "Enter the Number: " num
rev_num=0

# Logic 
while [ $num -gt 0 ]
do
	remainder=$(( $num % 10 ))
	rev_num=$(( $rev_num * 10 + $remainder ))
	num=$(( $num/10 ))
done

# Display the Output
echo "Reverse Number for $num : $rev_num"
