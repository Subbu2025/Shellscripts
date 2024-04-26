#!/bin/bash

#This is sample script for comment line in Bash

# This is a single line comment

# This is  the way to make multilines as comments in bash
: '
Hey, You are using multiline commenting mode
This is for multiline commenting in bash.
go on
go on'

echo "Hey $USER, your testing  bash comment lines script here";

# The follwing  code  explain  the HereDOc section

cat << COMMENT
Hey Devloper This is HereDoc Section. 
Use the following code for your project.
COMMENT

cat << BLOCK
This is Block Delimiter
    Hey Do you get it.
BLOCK
