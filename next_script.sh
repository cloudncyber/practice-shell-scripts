#!/bin/bash
#iterate the script folder and determine the next sequencial number and use 
#that append that number to the next script with starting content

#step1
#loop through the scripts folder and determine the total number of files
scripts_location=$HOME/Documents/scripts
total_files_no=0

#make temp file
file_list=$(mktemp file_list.XXXXXX)

for file in $scripts_location/*
do
 echo $file
done > $file_list

total_files_no=$(wc -l < $file_list)

#step2
#create a new script and append the total_files number as a script name
rm -f $file_list 2> /dev/null

currentfileno=$[ $total_files_no - 1 ]

touch test$currentfileno.sh

echo "#!/bin/bash" > test$currentfileno.sh
nano ./test$currentfileno.sh

#the following commands can count the number of files in a directory
#(1)ls <directory> | wc -l
#there is a difference between ls -l | wc -l & ls | wc -l
#the former also counts total disk allocation which is nit needed most times

#(2)find <directory> -type f | wc -l
#the find command is used to search for files
#when used with the -f option, you are targetting only files i.e -d,-x..
#by default the find command does not stop at the first depth of the 
#directory,it will explore every subdirectory, making the search recursive

#(3)tree <directory>
#count hidden files by using the -a option 
