#!/bin/bash
#redirecting the file input
exec 0< testout
count=1

while read line
do
 echo "line #count: $line"
 count=$[ $count + 1 ]
done
