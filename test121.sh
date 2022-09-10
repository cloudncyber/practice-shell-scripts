#!/bin/bash
#creating and using temp file

tempfile=$(mktemp test116.XXXXXX)

exec 3>$tempfile

echo "this script writes to temp file $tempfile"

echo "this is the first line" >&3
echo "this is the second line" >&3
echo "this is the last line" >&3
echo 3>&-

echo "done creating temp file. the contents are:"
cat $tempfile
rm -f $tempfile 2> /dev/null

