#!/bin/bash
# using functions define in a library file

. ./myfuncs

value1=10
value2=5
#
result1=$(addup $value1 $value2)
result2=$(multi $value1 $value2)
result3=$(divide $value1 $value2)

echo "the result of adding is: $result1"
echo "the result of multiplying is: $result2"
echo "the result of dividing is: $result3"
