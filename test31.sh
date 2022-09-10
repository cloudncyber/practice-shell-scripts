#!/bin/bash
#testing compound comparisons
#
if [ -d $HOME ] && [ -w $HOME/sentinel ]
then
 echo "the file exists and you can write to it"
else
 echo "i cannot write to the file"
fi

