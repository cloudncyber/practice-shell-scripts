#!/bin/bash
#testing the read command with -p option
#run with bash instead of zsh
read -p "Please enter your age: " age
days=$[ $age * 365 ]
echo "that makes you over $days days old"
