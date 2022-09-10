#!/bin/bash
#check if either a file or directory exist

location=$HOME
file_name=sentinel

if [ -e $location ]
then #directory exist
 echo "Ok on the $location directory"
 echo "now checking on the file"
 if [ -e /$location/$file_name ]
  then #file does exist
  echo "Ok on the file name"
  echo "updating current date..."
  date >> /$location/$file_name
  #
  else #File does not exist
  echo "File does not exist"
  echo "Nothing to update" 
 fi
else #Directory does not exist
 echo "the $location directory doe not exist"
 echo "nothing to update"
fi 
