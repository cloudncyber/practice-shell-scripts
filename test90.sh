#!/bin/bash
#getopts command demonstration
#
echo
#you have to specify the each cases in the getopts params directly below
#else you have not get what you expect
while getopts \:ab:cd: opt
do
 case "$opt" in
  a) echo "found the -a option" ;;
  b) echo "found the -b option, with value $OPTARG" ;;
  c) echo "found the -c option" ;;
  d) echo "found the -d option with option $OPTARG" ;;
  *) echo "unknown option: $opt" ;;
 esac
done
#
shift $[ $OPTIND - 1 ]
#
echo
count=1
for param in "$@"
do
 echo "parameter $count: $param"
 count=$[ $count + 1 ]
done
