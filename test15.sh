#!/bin/bash
#testing a bad command
if thisisnotacommand
then
 echo "it does'nt work"
 echo $?
fi
echo "we are outside the if statement"
echo $?
