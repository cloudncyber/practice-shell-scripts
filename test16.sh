#!/bin/bash
user=noSUchUser
if grep $user /etc/passwd
then
 echo "the bash files for $user are:"
 ls -a /home/$user/.b* 
 
else
 echo "the user $user does not exist on this system"
 
fi

