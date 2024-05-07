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
	exit 1
fi

#Prompt for password
read -rsp "Enter Password: " password
echo


#Create the User

useradd -m -p "$password" "$user_name" &>/dev/null

if [ $? -eq 0 ]
then
      #Display a success message
      echo "User $user_name is added successfully"
else
      #Display an error message
      echo "Failed to add user $user_name" >&2
fi
}

# Main Script
add_user
