#!/bin/bash
#iterating through multiple directories

for file in $HOME/.b* /home/rich/badtest
do
 if [ -d "$file" ]
   then
    echo "$file is a directory"
  elif [ -f "$file" ]
   then
    echo "$file is a file"
  else
   echo "$file does not exist"
  fi
done
