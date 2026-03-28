#! /bin/bash

#function in bash scripting syntax

# echo "Enter Your Name"
# read name
# function greet {
#     echo "Hello $name, Welcome to Bash Scripting"
# }
# greet

# print_banner() {
#     echo "========================"
#     echo "     Tool version V 1.12     "
#     echo "========================"
# }
# print_banner

test_scope() {
    echo "Inside the function, the value of a is: $1"
    echo "Inside the function, the value of b is: $2"
}

echo "Outside the function, the value of a is: $1"
echo "Outside the function, the value of b is: $2"
echo "-----------------------------"

#calling th function with arguments
test_scope "Apple" "Banana"