#!/bin.bash
#shift
while [ $# -gt 0 ] ; do
	echo "total items in the list: $#"
	echo "the next item is: $1"
	echo "____________________"
	shift
done
