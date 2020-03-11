#!/bin/bash

# This is a simple example of function

# create the Hello function
function Hello() {
    echo "Hello $USER"
}

# a function can also be created by emiting the word function
Goodbye() {
    echo "Goodbye $USER"
}

# Call functions
# We do not need to use parentheses when calling a function
echo "Calling the Hello function"
Hello

echo "Calling the Goodbye function"
Goodbye

exit 0