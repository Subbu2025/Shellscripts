#!/bin/bash

#This script will print digits that are at odd position from the given number
read -p "Enter the Number: " num
n=1

len=${#num}
echo "$len"
while [ $n -le $len ]
do
	a=$(echo $num|cut -c $n)
	echo -n "$a"
	n=$(expr $n + 2)
done
     echo " "

