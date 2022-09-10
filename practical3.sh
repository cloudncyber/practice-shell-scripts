#!/bin/bash
#delete created users with administrative privileges
#deluser and userdel can be used to delete users but the system recommends deluser ps: run man deluser to find out why its preferred
users="users.csv"

while IFS=',' read -r userid name
do
 echo "deleting user $userid"
 userdel -r "$userid"
done < $users
