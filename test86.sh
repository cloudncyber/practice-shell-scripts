#!/bin/bash
#extracting options and parameters
# -n: check if has a length greater than zero
echo
while [ -n "$1" ]
do
 echo current option: $1
 case "$1" in
  -a) echo "Found the -a option";;
  -b) echo "Found the -b option";;
  -c) echo "Found the -c option";;
  --) shift
      break ;;
   *) echo "$1 is not an option";;
 esac
 shift
done
#
count=1
for param in $@
do
 echo "parameter #$count: $param"
 count=$[ $count + 1 ]
done
