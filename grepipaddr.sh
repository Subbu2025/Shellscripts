#!/bin/bash

# This script is used to grep the IPv4 IP Addresses from the given log file and copy into a destination file

#Prompt the User to give the Source file path

read -p "Enter the source file path: " sourcefile_path

#Prompt the User to give the Destination file path

read -p "Enter the destination file path: " destinationfile_path

# Check if the log file exists
if [ ! -f "$sourcefile_path" ]
then
    echo "$sourcefile_path is does not exists"
    exit 1
fi

# Use grep with a regular expression to find all IP addresses in the given source file
# The -E option enables extended regular expressions
# The -o option shows only the matched part (IP address) instead of the whole line

ip_addresses=$(grep -Eo "([0-9]{1,3}\.){3}[0-9]{1,3}" "$sourcefile_path")

# Write the IP addresses to the output file
echo "$ip_addresses" > "$destinationfile_path"

echo "The following IP addresses are extracted from $sourcefile_path and written to $destinationfile_path"

cat "$destinationfile_path"

