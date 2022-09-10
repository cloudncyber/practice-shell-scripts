#!/bin/bash
#check if you have permission to write to a file
file_name=$HOME/sentinel
#
if [ -f $file_name ]
 then 
 echo "it exist and it's a file"
 if [ -w $file_name ]
  then
   echo "i have the permission to write to $file_name"
   echo "writing current time"
   date +%H%M >> $file_name
   cat $file_name
 else
   echo "you don't have the permission to write to this $file_name"
 fi
else
 echo "$file_name is not a file"
fi
