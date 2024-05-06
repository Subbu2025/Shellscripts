#!/bin/bash

# This script will sort and then remove the duplicates in the given array

# Prompt the user to enter elements for the array
echo "Enter elements for the array separated by spaces:"

read -rp "Enter the array of items: " input

# Split the input into an array using space as delimiter
IFS=' ' read -r -a my_array <<< "$input"

sorted_unique_array=($(echo "${my_array[@]}" | tr ' ' '\n' | sort -u | tr '\n' ' '))
echo "${sorted_unique_array[@]}"

<<comments
    ${my_array[@]} expands to all elements of the ids array.
    echo "${my_array[@]}" prints all elements of the ids array.
    tr ' ' '\n' replaces all spaces with newline characters, effectively converting the elements of the array into separate lines.
    sort -u sorts the lines (elements) in ascending order (sort) and removes duplicate lines (-u option).
    tr '\n' ' ' replaces newline characters with spaces, effectively converting the sorted, unique lines back into a single line.
comments

<<comments
The tr command in Bash is used for character translation or deletion. In this case, tr ' ' '\n' is used to replace spaces with newline characters.

Let's break it down:

    tr command:
        tr stands for "translate" or "transliterate".
        It is used to perform character-by-character translation, deletion, or squeezing (repeating characters are replaced by a single occurrence).

    Arguments:
        ' ': The first argument is the character to be replaced, in this case, a space.
        '\n': The second argument is the character to replace with, in this case, a newline character.

    Usage:
        When tr ' ' '\n' is applied to a string, it replaces all occurrences of spaces with newline characters.
Example:
echo "This is a sentence." | tr ' ' '\n'
Output:
This
is
a
sentence.
comments
