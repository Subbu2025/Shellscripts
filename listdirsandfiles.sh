#!/bin/bash

echo "Enter your directory path"
read dir_path

# Check if the directory exists
if [ ! -d "$dir_path" ]; then
    echo "Directory '$dir_path' does not exist."
    exit 1
fi

# Loop through each item in the directory
for item in "$dir_path"/*; do
    item_name=$(basename "$item")
    if [ -d "$item" ]; then
        echo "Subdirectory: $item_name"
    elif [ -f "$item" ]; then
        echo "File: $item_name"
    else
        echo "Unknown item: $item_name"
    fi
done
