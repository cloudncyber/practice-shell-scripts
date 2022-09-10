#!/bin/bash
#checking and testing file date
#
if [ test27.sh -nt test26.sh ]
then 
 echo "the test27 file is newer that test26"
else
 echo "the test26 file is newer than test27 file"
fi
if [ test19.sh -ot test20.sh ]
then 
 echo "the test19 file is older than the test20 file"
else 
 echo "the test20 file is newer than test19"
fi 

