#!/bin/bash
#array variable to function test

function testit {
 local newarray
 newarray=($(echo "$@"))
 echo "the new array value is: ${newarray[*]}"
}

myarray=(1 2 3 4 5)
echo "the original array is ${myarray[*]}"
testit ${myarray[*]}
