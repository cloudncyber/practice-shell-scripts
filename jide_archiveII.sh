#!/bin/bash

#get current date
DATE=$(date +%y%m%d)

#set archive file name
FILE=archiveII$DATE.tar.gz

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

#recursive function/for loop to find paths within directories
function findDirectoryFiles {
 for file in $1
 do
  echo "dir file: $file"
  ENTITY_LIST="$ENTITY_LIST $file"
  ENTITIES_TO_ARCHIVE=$[$ENTITIES_TO_ARCHIVE + 1]
 done 
}


while read entity_path
do
 #make sure the file/path exist.
 if [ -e "$entity_path" ]
 then
   #if it is a directory, pass it to the findDirectoryFile function
   if [ -d "$entity_path" ]
    then
     #if the directory exist, iterate and append the files/paths to entity list
     findDirectoryFiles "$entity_path/*"
   #if it is a file, append to entity list
   elif [ -f "$entity_path" ]
    then
    #add the file/path to the entity list variable
    ENTITY_LIST="$ENTITY_LIST $entity_path"
   fi
   #echo "ENTITY_LIST: $ENTITY_LIST"
   ENTITIES_TO_ARCHIVE=$[$ENTITIES_TO_ARCHIVE + 1]
 else
   #if the file doesnt exist, issue warning
   echo "$entity_path does not exist or have been deleted."
   echo "it is listed on line $ENTITIES_TO_ARCHIVE of the config file"
   echo
 fi
done < $CONFIG_FILES

function archiveEntity {
 tar -czf $1 $2 2> /dev/null
 echo
 echo "archiving..."
 echo "total files archive: $ENTITIES_TO_ARCHIVE"
 exit
}

#call the archive function with destination and entities to archive parameters respectfully
archiveEntity $DESTINATION "$ENTITY_LIST"
