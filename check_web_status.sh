#!/bin/bash

# Prompt the user for a website link
read -r -p "Enter the URL Link to check the status: " url_link

# The following regular expression is useful to validate the given URL Link
<<comments
    The following code defines a regular expression pattern stored in the variable regex.
    The regex pattern validates URLs with various protocols (http, https, ftp, file) and ensures they have a valid domain and optional path.
comments

regex='(https?|ftp|file)://[-[:alnum:]_]+(\.[[:alnum:]_]+)+(/[[:alnum:]_]+)*'

# Define a function to check the status of a website
check_website() {
   # Validate the given URL Link
<<comments
    The following block checks if the entered URL matches the regex pattern.
    If the URL is valid, it proceeds to check the website status using curl.
    If the URL is not valid, it displays an error message and exits the script.
comments

if [[ "$url_link" =~ $regex ]]; then
    echo "Given URL is a valid URL"
<<comments
    The following line uses curl to send a silent request to the URL and store the HTTP status code in the variable response.
    -s flag ensures silent mode (no progress or error messages).
    -o /dev/null redirects the output to /dev/null to discard it.
    -w "%{http_code}" specifies that only the HTTP status code should be printed.
comments
    local response=$(curl -s -o /dev/null -w "%{http_code}" "$url_link")
<<comments
    This block checks the HTTP status code received from the website.
    If the status code is 200, it indicates that the website is up and running, and a message is printed accordingly.
    If the status code is different from 200, it indicates that the website is down, and a message is printed accordingly.
comments
    if [ "$response" == "200" ]; then
        echo "Website $url_link is up and running!"
    else
        echo "Website $url_link is down!"
    fi
else
    echo "Given URL is not a valid URL. Please provide a valid URL link." 
    exit 1   
fi

}

# Call the function with a sample website
check_website "$url_link"

