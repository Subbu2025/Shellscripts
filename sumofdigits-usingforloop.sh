#!/bin/bash

# Function to print digits at odd positions

sum_of_digits() {

# Check if the input is empty or non-numeric
#If either of the conditions (! $num or ! $num =~ ^[0-9]+$) is true, it means the input is either empty or non-numeric.
if [[ ! $input_number || ! $input_number =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi

    local number="$1"
    local length=${#number}
    sum=0

    for (( i=0; i<$length; i++ )); do
	    digit="${number:$i:1}"   # Extract the digit at position i
	    sum=$((sum+digit))       # Add the digit to the sum
    done
    echo "$sum"
}

# Main script
read -p "Enter a number: " input_number

result=$(sum_of_digits "$input_number")
echo "Sum of digits of $input_number is: $result"

