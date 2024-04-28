#!/bin/bash
# This script will give the specified word count in each line of the given file


#Prompt the user to enter the file path
read -p "Enter the file path: " file_path

#Prompt the user to enter the required word to search
read -p "Enter the word you want to search: " search_word

# To show th  total no of times the search_word is occured in the given file
i=$(grep -wi "$search_word" "$file_path" | wc -l); echo "The "$search_word" is occured total $((i + 1)) times"

# Use grep to find all occurrences of the word in the log file

# The -w option ensures that only whole word matches are considered

# The -n option shows line numbers where the word is found

# The -i option performs case-insensitive matching

matches=$(grep -win "$search_word" "$file_path")

# Check if any matches are found and print with line number
if [[ -n "$matches" ]]
then

echo "The occurance of "$search_word"  in the log file"
echo "$matches"

else

echo "There is no occurance of "$search_word" in the log file"

fi

