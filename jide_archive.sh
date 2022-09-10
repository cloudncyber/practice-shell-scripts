#!/bin/bash

#get current date
DATE=$(date +%y%m%d)

#set archive file name
FILE=archive$DATE.tar.gz

DESTINATION="$HOME/Documents/scripts/tar/$FILE"
CONFIG_FILES="tar/config_files"
ENTITIES_TO_ARCHIVE=0

#check if config file exist and is not empty
if [ -s $CONFIG_FILES ]
then
 echo "found configuration file with content"
else
 echo "cannot find configuration file or file is empty"
 exit
fi

#read content of configuration file and store the entity paths
#exec command executes command in a script, here we execute the read command
#and redirect the output of the read command to exec
exec < $CONFIG_FILES

#just like a prompt, we read what ever is on std input
read FILE_NAME

#run a while loop that reads the entire content of the file line by line or until it returns a zero exit status
while [ $? -eq 0 ]
do
 #make sure the file or directory exists.
 if [ -f "$FILE_NAME" -o -d "$FILE_NAME" ]
 then
   #if file exist, add its name to the list
   FILE_LIST="$FILE_LIST $FILE_NAME"
   echo "file list: $FILE_LIST"
 else
   #if the file doesnt exist, issue warning
   echo
   echo "$FILE_NAME does not exist."
   echo "Obviously, i will not include it in this archive"
   echo "it is listed on line $ENTITIES_TO_ARCHIVE of the config file"
   echo "continuing to build archive list..."
   echo
 fi

 ENTITIES_TO_ARCHIVE=$[$ENTITIES_TO_ARCHIVE + 1] #increase the line/file number by one.
 read FILE_NAME #read next record.
done

function archiveEntity {
 tar -czf $1 $2 2> /dev/null
 echo
 echo "archiving..."
 echo "total files archive: $ENTITIES_TO_ARCHIVE"
 exit
}

#call the archive function with destination and entities to archive respectfully
archiveEntity $DESTINATION "$FILE_LIST"
