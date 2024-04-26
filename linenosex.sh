#!/bin/bash

# Initialize line number counter
line_number=1

# Function to echo with line number
function echo_with_line_number {
    echo "$line_number: $1"
    ((line_number++))
}

# Echo command 1
echo_with_line_number "This is the first line"

# Echo command 2
echo_with_line_number "This is the second line"

# Echo command 3
echo_with_line_number "This is the third line"

