#!/bin/bash

#This script is used to add users to the current linux system

#Function to add a user

add_user()
{
#Prompt the user to enter his username
read -rp "Enter the Username: " user_name

if id "$user_name" &>/dev/null
then
	echo "Username $user_name is already exists" >&2
	return 1
fi

#Prompt for password
read -rsp "Enter Password: " password
echo


#Create the User

useradd -m -p "$password" "$user_name" &>/dev/null

#Set the password for the user
#echo "$user_name:$password" | chpasswd

#Display a success message
echo "User $user_name is added successfully"
}

# Main Script
add_user
