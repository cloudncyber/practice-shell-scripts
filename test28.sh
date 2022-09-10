#!/bin/bash
#check file ownership
#
fileinquestion=/etc/passwd
if [ -O $fileinquestion ]
then
 echo "you are the owner of $fileinquestion"
else
 echo "you are not the owner of $fileinquestion"
fi
