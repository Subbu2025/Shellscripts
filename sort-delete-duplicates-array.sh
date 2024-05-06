#!/bin/bash

# This script will sort and then remove the duplicates in the given array

# Prompt the user to enter elements for the array
echo "Enter elements for the array separated by spaces:"

read -rp "Enter the array of items: " input    
<<comments
The -r option in read is used to prevent backslashes \ from acting as escape characters.
When -r is used, the backslashes in the input are treated literally. They are not interpreted as escape characters. 
For example, if you input \n (backslash followed by 'n'), it will be treated as two characters \ and n, not as a newline character.
comments

# Split the input into an array using space as delimiter
IFS=' ' read -r -a my_array <<< "$input"

<<comments
This command reads the input string provided by the user, splits it into individual elements using spaces as the delimiter, and stores those elements into an array variable named my_array. 
The IFS setting ensures that the input string is split correctly based on spaces. The -r option ensures that backslashes in the input are treated literally, 
and the -a my_array option specifies that the input should be stored in an array variable named my_array.
comments

uniq_array=()
#The line uniq_array=() initializes an empty array named uniq_array. This line creates an empty array without any elements.

for item in "${my_array[@]}";
do 
	if [[ ! "${uniq_array[@]}" =~ "$item" ]];
	then
		uniq_array+=("$item")
        fi
done

# Print the unique elements
echo "Unique elements of the array:"
echo "${uniq_array[@]}" | sort


<<comments
for loop line(1-2): This loop iterates over each item in the my_array array. The variable item will hold each element of the array in each iteration.
if Condition: This condition checks if the current item ($item) is not present in the uniq_array. It uses the =~ operator to perform a regular expression match. 
The expression ${uniq_array[@]} expands to all elements of the uniq_array. The ! operator negates the condition, so the block inside the if statement executes if the item is not found in uniq_array.
line-5: If the current item is not already present in the uniq_array, it is appended to the uniq_array. This line adds the item to the end of the uniq_array.
comments

<<comments
In Bash scripting, the =~ operator is used for regular expression matching. When used in a conditional expression within double square brackets [[ ... ]], it allows you to check if a string matches a specified regular expression pattern.

Here's how =~ works:

    Syntax: [[ string =~ regex ]]

    Result:
        If the string matches the regular expression pattern, the conditional expression evaluates to true.
        If the string does not match the regular expression pattern, the conditional expression evaluates to false.
comments


