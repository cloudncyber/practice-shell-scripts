#!/bin/bash
#testing parameters
#
if [ $# -ne 2 ]
then
 echo 
 echo usage: test97.sh a b
 echo
else
 total=$[ $1 + $2 ]
 echo
 echo the total is $total
 echo
fi
