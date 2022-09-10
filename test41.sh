#!/bin/bash
#multiple variables, you can only define one condition in the for loop

for (( a=1, b=10; a <= 10; a++, b-- ))
do
 echo "$a - $b"
done
