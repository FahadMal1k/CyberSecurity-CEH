#! /bin/bash

# Q5. The Root Privilege Checker (Basic if/else) Security scripts often need to verify if the user running them has administrative privileges.
# •	Write a script that prompts the user with: "Enter your current username: "
# •	Store the input in a variable.
# •	If the username is exactly "root", print "Status: Administrator privileges confirmed. Proceeding with system scan."
# •	If the username is anything else, print "Status: Standard user detected. Permission denied."

echo "Enter your current username: "
read username
if [ "$username" == "root" ]
then
    echo "Administrator Privileges confirmed. Proceesding with system scan."
else
    echo "Standard user detected. Permission denied"
fi

#-----------------------------------------------------------

#question 6
# 6. The Vulnerability Score Calculator (Math & elif) Write a script that calculates a simplified risk score using command-line arguments.
# •	The script should take two numbers as command-line arguments: $1 (Impact Score) and $2 (Exploitability Score).
# •	Add the two numbers together and store the result in a variable called risk_score.
# •	Use conditional logic to categorize the score:
# o	If the risk_score is greater than or equal to (-ge) 8, print "Critical Risk: Immediate patching required."
# o	If the score is greater than or equal to 5, print "Medium Risk: Schedule for remediation."
# o	Else, print "Low Risk: Monitor for changes."

impact_score = $1
exploitability_score = $2
risk_score = $(( impact_score + exploitability_score ))

if [ "$risk_score" -ge "8" ]
then
    echo "Critical Risk: Immediate patching required."
elif [ "$risk_score" -ge "5" ]
then
    echo "Medium Risk: Schedule for remediation."
else
    echo "Low Risk: Monitor for changes."
fi

#-------------------------------------------------------------

#question 7
# The Engagement Rules Enforcer (Logical AND) During an assessment, you are only allowed to scan specific authorized targets using authorized tools.
# •	Write a script that asks the user for a "Target IP: " and a "Tool Name: ".
# •	Use a single if statement with the logical AND (&&) operator to check two things simultaneously:
# o	Is the IP exactly "10.0.0.5"?
# o	Is the tool exactly "nmap"?
# •	If BOTH are true, print "Engagement authorized. Initiating scan."
# •	If either is false, print "Warning: Out of scope or unauthorized tool. Aborting."

echo "Enter Target IP: "
read target_ip

echo "Enter Tool Name: "
read tool_name

if [ "$target_ip" == "10.0.0.5" ] && [ "$tool_name" == "nmap" ]
then
    echo "Engagement authorized. Initiating scan."
else
    echo "Warning: Out of scope or unauthorized tool. Aborting."
fi

#-------------------------------------------------------

# Q8. The Service Port Identifier (Nested Logic) Write a script that identifies the service running based on server type and port number.
# •	Ask the user to input a server type: "Enter server type (web or database): "
# •	Use an outer if statement to check the server type.
# o	If it is "web": Ask for the port number.
# 	If the port is 80, print "Service: Unencrypted HTTP web traffic."
# 	Else, print "Service: Encrypted or custom web traffic."
# o	If it is "database": Ask for the port number.
# 	If the port is 3306, print "Service: MySQL Database."
# 	Else, print "Service: Other database or custom port."
# o	Else (if neither web nor database is entered initially): print "Unknown server type."

echo "Enter server type (web or database): "
read server_type
if [ "$server_type" == "web" ]
then
    echo "Enter port number: "
    read port_number
    if [ "$port_number" -eq "80" ]
    then
        echo "Service: Unencrypted HTTP web traffic."
    else
        echo "Service: Encrypted or custom web traffic."
    fi
elif [ "$server_type" == "database" ]
then
    echo "Enter port number: "
    read port_number
    if [ "$port_number" -eq "3306" ]
    then
        echo "Service: MySQL Database."
    else
        echo "Service: Other database or custom port."
    fi
else
    echo "Unknown server type."
fi
