#!/bin/bash
#finding executable files in PATH 
#when you run a program from the command line, the linux system searches a series of folders looking
#for that file. those folders are defined in the PATH env.

#first step is to create a for loop to iterate through the folders stored in the PATH env, dont forget IFS

IFS=:

for folder in $PATH
do
 echo "$folder"
 for file in $folder/*
 do
  if [ -x $file ]
  then
   echo "  $file"
  fi
 done
done

