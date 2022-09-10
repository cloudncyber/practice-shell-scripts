#!/bin/bash
#using the return command in a function

function dbl {
 read -p "enter a value: " value
 echo "doubling the value"
 return $[ $value * 2 ]
}

dbl
echo "the new value is $?"
