#! /bin/bash

#For Loop Syntax

# for count in {1..10}
# do
#     echo "192.168.10.is $count"
# done

# for i in {1..10}
# do
#     echo "performing scan for 192.168.10.$i"
# done

#While Loop Syntax

# while [ condition ]
# do
#     command
# done

# i=1
# while [ $i -lt 10 ]
# do
#     echo "The value of i is $i"
#     i=$((i+1)) #i++ is not supported in bash scripting
# done

# Part 1: for Loop Scenarios
# Q1. The Log File Parser (Iterating through a list) During post-exploitation or incident response, you often have to parse through multiple log files.
# •	Write a script that uses a for loop to iterate through a list of three specific files: auth.log, syslog, and apache.log.
# •	For each file, print the exact phrase: "Analyzing log file: [filename]..."

# Answer 1

log_files=("auth.log" "syslog" "apache.log")

for file in "${log_files[@]}" #This syntax is used to iterate through an array in bash scripting. The "${log_files[@]}" expands to all elements of the array, allowing the loop to process each file name one by one.
do
   echo "Analyzing log file: $file..."
done

# Q2. The Exploit Countdown (for loop with a range) Sometimes you need to delay a script from executing immediately to avoid triggering alarms or to wait for a service to start.
# •	Write a script that uses a for loop to count backward from 5 to 1.
# •	Inside the loop, print: "Execution in: [number]..."
# •	After the loop completely finishes, print: "Payload delivered."
# •	(Hint: You can use the {5..1} syntax to create a reverse range).

for i in {5..1}
do
    echo "Execution in: $i..."
done

# Part 2: while Loop Scenarios
# Q3. The Connection Retry Simulator (while loop with a counter) If a target server drops a connection, a good script will try to reconnect a few times before giving up.
# •	Create a variable called retries and set it to 1.
# •	Create a while loop that runs as long as retries is less than or equal to 4 (-le 4).
# •	Inside the loop, print: "Attempting to connect... (Try [number] of 4)"
# •	Add 1 to the retries variable on each cycle.
# •	After the loop finishes, print: "Connection failed. Target is unreachable."

retries=1
while [ $retries -le 4 ]
do
    echo "Attempting to connect... (Try $retries of 4)"
    retries=$((retries+1))
done

# 4. The Service Status Checker (Infinite while loop) Let's build a script that stays open and waits for the user to ask about different services, only closing when the user tells it to.
# •	Set up an infinite while loop (using while :).
# •	Inside the loop, prompt the user: "Enter a service to check (or type 'quit' to exit): " and store their input in a variable.
# •	Check their input using an if statement:
# o	If they typed "quit", print "Exiting scanner." and break the loop.
# o	If they typed anything else, print "Checking status of [service name]..." and let the loop naturally start over.

# Answer:

while :
do
    echo "Enter a service to check (or type 'quit' to exit): "
    read service_name   
    if [ "$service_name" == "quit" ]
    then
        echo "Exiting scanner."
        break
    else
        echo "Checking status of $service_name..."
    fi
done
