#!/bin/bash
#find big disk users in various directories

#directories to check
CHECK_DIRECTORIES="/var/log /home"

##### main script #####
DATE=$(date '+%m%d%y') #date for report file

exec > disk_space_$DATE.rpt #make report file STDOUT

echo "top ten disk space usage" #report header
echo "for $CHECK_DIRECTORIES directories"

#loop to du directories
for DIR_CHECK in $CHECK_DIRECTORIES
do
 echo ""
 echo "the $DIR_CHECK Directory:" #directory header

 #create a listing of top ten disk space users in this dir
 du -S $DIR_CHECK 2>/dev/null |
 sort -rn |
 sed '{11,$D; =}' |
 sed 'N; s/\n/ /' |
 gawk '{printf $1 ":" "\t" $2  "\t" $3 "\n"}' 
done
exit
