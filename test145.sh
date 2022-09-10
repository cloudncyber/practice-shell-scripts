#!/bin/bash
#using the echo to return a value

function dbl {
 read -p "enter a value: " value
 echo $[ $value * 2 ]
}

result=$(dbl)
echo "the new value is $result"
echo $0
