#!/bin/bash

# Function to print digits at odd positions

print_odd_digits() {
    
# Check if the input is empty or non-numeric
#If either of the conditions (! $num or ! $num =~ ^[0-9]+$) is true, it means the input is either empty or non-numeric.
if [[ ! $input_number || ! $input_number =~ ^[0-9]+$ ]]; then
    echo "Invalid input. Please enter a valid number."
    exit 1
fi
   
    local number="$1"
    local length=${#number}

    for (( i=0; i<$length; i+=2 )); do
        echo "${number:$i:1}"
    done
}

# Main script
read -p "Enter a number: " input_number

echo "Digits at odd positions in $input_number:"
print_odd_digits "$input_number"

