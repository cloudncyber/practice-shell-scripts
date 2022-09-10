#!/bin/bash
#iterate through all the files in a dir assuming i dont know the content
#
for file in $HOME/Downloads/*
 do
  if [ -d "$file" ]
   then
    echo "$file is a directory"
  elif [ -f "$file" ]
   then
    echo "$file is a file"
  fi
done
