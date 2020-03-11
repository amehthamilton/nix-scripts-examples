#!/bin/bash

# This is a simple example of function using parameters

# create the Hello function
function Hello() {
    # using local variable
    local LNAME=$1
    echo "Hello $LNAME"
}

# a function can also be created by emiting the word function
Goodbye() {
    echo "Goodbye $1"
}

# Call functions
# We do not need to use parentheses when calling a function
echo "Calling the Hello function"
Hello Bob

echo "Calling the Goodbye function"
Goodbye Robert

exit 0