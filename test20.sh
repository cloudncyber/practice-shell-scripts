#!/bin/bash
#testing string length
name=olajide
nickname=''

if [ -n name ]
then 
 echo "the string '$name' is not empty"
else
 echo "the string '$name' is empty"
fi
#
if [ -z $nickname ]
then 
 echo "the string '$nickname' is empty"
else
 echo "the string '$nickname' is not empty"
fi
#
if [ -z $undefinedvariable ]
then 
 echo "the string '$undefinedvariable' is empty"
else
 echo "the string '$undefinedvariable' is not empty"
fi
