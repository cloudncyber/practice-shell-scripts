#!/bin/bash
#making a temp file in /tmp

tempfile=$(mktemp -t tmp.XXXXXX)

echo "this is a test file." > $tempfile
echo "this is the second line of the test." >> $tempfile

echo "the temp file is located at: $tempfile"
cat $tempfile
rm -f $tempfile
