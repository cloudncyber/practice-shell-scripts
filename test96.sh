#!/bin/bash
#getting just one char of input
#
read -n1 -p "do you want to continue [Y/N]? " answer
case $answer in 
Y | y) echo
       echo "fine, carry on...";;
N | n) echo
       echo OK, goodbye
       exit;;
esac
echo "this is the end of the script"
