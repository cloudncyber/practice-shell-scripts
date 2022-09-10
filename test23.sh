#!/bin/bash
#check if either a file or directory exist
#
item_name=$HOME/sentinel
echo
echo "The item being checked: $item_name"
echo
#
if [ -e $item_name ]
then #Item does exist
 echo "The item, $item_name does exist"
 echo "But is a file?"
 echo
 if [ -f $item_name ]
  then #it is a file
  echo "Yes! $item_name is a file"
  else
   echo "It is not a file"
 fi
 #
else #item does not exist
 echo "The item, $item_name does not exist"
 echo "Nothing to update"
#
fi
