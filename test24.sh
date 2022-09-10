#!/bin/bash
pwfile=/etc/shadow
#
#first test if the exist and if its a file then check if its readable
if [ -f $pwfile ]
then
 echo "$pwfile indeed exist and its a file"
 if [ -r $pwfile ]
  then
   tail $pwfile
 else
  echo "sorry, i am unable to read the $pwfile file"
 fi
else
 echo "$pwfile is not a file"
fi
