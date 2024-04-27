#!/bin/bash
#This script is useful to test multiple patterns using a case statement.
#Concept is to check the no of days are present in the user specified month.
shopt -s nocasematch
#The shopt command with the -s nocasematch option reduces the chance for error with the pattern matching being case insensitive.
echo "Enter the name of a month."
read month
case $month in
  February)
echo "There are 28/29 days in $month.";;
#The pipe symbol | separates the patterns in each of the clauses.
  April | June | September | November)
echo "There are 30 days in $month.";;
  January | March | May | July | August | October | December)
echo "There are 31 days in $month.";;
  *)
echo "Unknown month. Please check if you entered the correct month name: $month";;
esac
