#!/bin/bash
#redirecting the for output to a file

for file in $HOME/Downloads/*
do
 if [ -d "$file" ]
 then
  echo "$file is a directory"
 elif [ -f "$file" ]
 then
  echo "$file is a file"
 fi
done | sort > output_sorted.txt
