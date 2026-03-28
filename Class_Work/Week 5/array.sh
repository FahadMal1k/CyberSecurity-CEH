#! /bin/bash

#array in bash scripting syntax

# tools=("Nmap" "Metasploit" "Wireshark" "Burp Suite")

# echo "The first tool in the array is: ${tools[@]}" #to print all the elements in the array

arr=('Apple' 'Banana' 'Cherry' 'Date')

# echo "${arr[1]}" #to print the second element in the array
# echo "${arr[@]}" #to print all the elements in the array

for i in "${arr[@]}"; 
do
    echo "$i"
done