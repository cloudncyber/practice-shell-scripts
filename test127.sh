#!/bin/bash
#read file and create INSERT statements for MySQL

#we are redirecting/appending >> new data the file via the cat command 
#to the .sql file

#for each block of text/line of text separated by the ',' symbol, we pass the
#operation/process to the .sql file

#EOF(end of file as i like to call it) gives you the flexibility to perform
#operations withing the EOF block

#${1} represents the first parameter we pass to this script, which is file
#containing the data separated by ',' i.e members.csv

outfile='members.sql'
IFS=$','
while read lname fname address city state zip
do
 echo $lname, $fname, $address, $city, $state, $zip
 cat >> $outfile << EOF
 INSERT INTO members (lname,fname,address,city,state,zip) VALUES
('$lname', '$fname', '$address', '$city', '$state', '$zip');
EOF
done < ${1}
