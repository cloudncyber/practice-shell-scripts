#!/bin/bash
#testing parameter before use
#
if [ -n "$1" ]
then
 echo Hello $1, glad to meet you.
else
 echo "sorry you did not identify yourself."
fi
