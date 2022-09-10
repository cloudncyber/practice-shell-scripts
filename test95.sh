#!/bin/bash
#timing the data entry
#
if read -t 5 -p "please enter your name: " name
then
 echo "hello $name, welcome to my script"
else
 echo
 echo "sorry too slow"
fi
