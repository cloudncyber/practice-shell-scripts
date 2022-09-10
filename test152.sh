#!/bin/bash
#returning an array value

arraydblr() {
 local originalarray
 local newarray
 local elements
 local i
 originalarray=($(echo "$@"))
 newarray=($(echo "$@"))
 elements=$[ $# - 1 ]
 for (( i = 0; i <= $elements; i++ ))
 {
  newarray[$i]=$[ ${originalarray[$i]} * 2]
 }
 echo ${newarray[*]}
}

myarray=(1 2 3 4 5)
echo "the original array is: ${myarray[*]}"
arg1=$(echo ${myarray[*]})
result=($(arraydblr $arg1))
echo "the new array is: ${result[*]}"
