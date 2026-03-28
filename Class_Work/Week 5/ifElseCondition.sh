#Syntax of if else condition in bash scripting
#if else condition

#if [condition]
#then
#   command
#else
#   command
#fi

# echo "Enter Your Name"
# read name 

# if [ "$name" == "Fahad" ]
# then
#     echo "Hello $name, Welcome to Bash Scripting"
    
# elif [ "$name" == "Ali" ]
# then
#     echo "Hello $name, Welcome to Bash Scripting"
# else
#     echo "Access Denied"
# fi

#-------------------

#AND and OR operator in if else condition

# if [ "$name" == "Fahad" ] || [ "$name" == "Ali" ]
# then
#     echo "Hello $name, Welcome to Bash Scripting"
# else
#     echo "Access Denied"
# fi

#-----------------------------

#Less than and Greater than operator in if else condition

echo "Enter a Number"
read number
if [ "$number" -ge "10" ] && [ "$number" -le "20" ]
then
    echo "Number is Between 10 and 20"
    echo "Number is $number"
else
    echo "Number is Not Between 10 and 20"
fi

