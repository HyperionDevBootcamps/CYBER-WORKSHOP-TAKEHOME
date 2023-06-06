#!/bin/bash

# FEEL FREE TO PLAY WITH, BREAK, DEBUG the below or EXTEND to serve as a project for your portfolio.


minimum_characters=8
lookaheads="(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*])"
wordlist=("password" "123456" "qwerty")
# Read in the password
read -s -p "Enter your password: " password

# Check Password against conditions:
if [[ ${#password} -lt $minimum_characters ]]; then
    echo "Password should be at least $MIN_LENGTH characters long."
elif ! [[ $password =~ $lookaheads ]]; then
    echo "Password must contain: an uppercase letter a lowercase letter, one digit, and one special character."
elif [[ " ${wordlist[@]} " =~ " $password " ]]; then
    echo "Password should not contain common dictionary words."
else
    echo "Password meets the requirements."
fi
