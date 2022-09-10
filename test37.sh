#!/bin/bash
#reading values from  a file
file=states
#IFS=$'\n':;" you can use different characters or a combination
IFS=$'\n'
for state in $(cat $file)
do 
 echo "Visit beautiful $state" 
done
