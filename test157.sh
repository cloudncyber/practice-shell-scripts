#!/bin/bash
# using a function defined in the .bashrc/.zshrc file

value1=10
value2=5
result1=$(addup $value1 $value2)
result2=$(multi $value1 $value2)
result3=$(divide $value1 $value2)

echo "The result of adding them is: $result1"
echo "The result of multiplying them is: $result2"
echo "The result of dividing them is: $result3"
