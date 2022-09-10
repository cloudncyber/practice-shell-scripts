#!/bin/dash
#testing the = comparison

test1=abcdef
test2=abcdef

if [ $test1 = $test2 ]
then
 echo "they're the same!"
else
 echo "they're different"
fi
