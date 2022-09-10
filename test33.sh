#!/bin/bash
#using pattern matching
#
if [[ $USER == r* ]]
then
 echo "Hello $USER"
else
 echo "Sorry, i do not know you"
fi
