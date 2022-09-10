#!/bin/bash
#error file date comparison
#
if [ -badfile2 -nt badfile2 ]
then 
 echo "the badfile1 file is newer than badfile2"
else
 echo "the badfile2 file is newer than badfile1 file"
fi
