#!/bin/bash
file_name=$HOME/sentinel
#check if file is empty
if [ -f $file_name ]
 then
 echo "$file_name exist and is a valid file"
 if [ -s $file_name ]
  then
   echo "$file_name has data in it"
   echo "will not remove this file"
  else
   echo "$file_name is empty and has no data in it"
   echo "will remove $file_name file"
   rm $file_name
 fi
else
 echo "$file_name file does not exist"
fi
