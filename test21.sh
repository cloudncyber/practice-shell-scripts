#!/bin/bash
#look before you leap
#
jump_directory=/home/solomon/
#
if [ -d $jump_directory ]
then 
 echo "the $jump_directory exist"
 cd $jump_directory
 ls
else
 echo "the $jump_directory does not exist"
fi
