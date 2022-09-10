#!/bin/bash
#test job control
#
echo "script process ID: $$"
#
count=1
while [ $count -le 10 ]
do
 echo "loop #$count"
 sleep 10
 count=$[ $count + 1 ]
done
#
echo "end of script"
