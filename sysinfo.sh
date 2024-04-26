#!/bin/bash

#This script will display the basic information of the current linux system
# Initialize line number counter
line_number=1

# Function to echo with line number
function echo_with_line_number {
    echo "$line_number.$1"
    ((line_number++))
}

# Echo command 1: Displaying the version of the existing Linux System
echo_with_line_number "The version of the current Linux System is: "; lsb_release -a 2>/dev/null | awk -F ':' '{gsub(/^[ \t]+|[ \t]+$/, "", $2); print $2}' | head -2 | tail -1;
#This command uses the gsub function to globally substitute any leading (^[ \t]+) or trailing ([ \t]+$) whitespace characters with an empty string for the second field ($2). 
#Then it prints the modified output.
echo;
# Echo command 2: Displaying the today's date 
echo_with_line_number "Today's Date is: "; date;
echo;
# Echo command 3: Displaying from howlong systems is running
echo_with_line_number "The system is running since: "
uptime;
echo;
# Echo command 4: Displaying the online user information 
echo_with_line_number "The following users are in online now: ";
w 2>/dev/null|head -3|tail -2;
echo;
# Echo command 5: Displaying the system host name
echo_with_line_number "The current system host name is: "; hostname;

# I am pushing this  script to my github repository
echo "Hey $USER, NOw your going to push this script to your github repository"
