#!/bin/bash

# Prompt the user to enter a fruit
echo "Enter a fruit: "
read fruit

# Check the fruit using a case statement
case $fruit in
    apple)
        echo "You entered an apple."
        ;;
    banana)
        echo "You entered a banana."
        ;;
    orange|kiwi)
        echo "You entered an orange or a kiwi."
        ;;
    *)
        echo "You entered something else."
        ;;
esac
