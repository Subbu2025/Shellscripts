#!/bin/bash
read -p "Enter the file path: " file_path
read -p "Enter no of lines to cut: " n
read -p "Enter from which line needs to be cut: " m
e=1
t=$(($n + $m))
exec < $file_path      #redirects the input from the specified file to standard input, allowing the while loop to read from it.
while read line        #used to read input lines from a file or standard input and assigns each line to the variable line for processing within the loop.
do
	if [ $e -ge $m -a $e -le $n ]
	then
	echo $line
        fi
	e=$(( $e + 1 ))
done	
