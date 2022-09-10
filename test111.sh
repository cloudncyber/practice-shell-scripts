#!/bin/bash
#redirecting input file descriptors

exec 6<&0

exec 0< testout

count=1
while read line
do
 echo "line #$count: $line"
 count=$[ $count + 1 ]
done

exec 0<&6
read -p "Are you done now?" answer
case $answer in 
y | Y) echo "goodbye";;
n | N) echo "sorry this is the end";;
esac
