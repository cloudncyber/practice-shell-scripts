#!/bin/bash
#testing nested ifs
testuser="impostor"

if grep $testuser /etc/passwd
then
 echo "the user $testuser exist on this system"
else
 echo "the user $testuser does'nt exist on this system"
 if ls -d /home/$testuser/
 then 
  echo "however, user $user has a home directory"
 fi
fi

