#!/bin/bash
#check if you have permission to execute a file
fileinquestion=./test26.sh
#
if [ -f $fileinquestion ]
 then
  echo "$the file $fileinquestion exist"
  if [ -x $fileinquestion ]
   then
    echo "you have the rights to execute this script"
    $fileinquestion
  else
   echo "you don't have the permission to execute this script"
  fi
else
 echo "either it is not a file or the file does'nt exist"
fi
