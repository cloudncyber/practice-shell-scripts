#!/bin/bash
#creating a temporary directory

tempdir=$(mktemp -d dir.XXXXXX)
cd $tempdir
tempfile1=$(mktemp temp.XXXXXX)
tempfile2=$(mktemp temp.XXXXXX)
exec 7> $tempfile1
exec 8> $tempfile2

echo "sending data to directory $tempdir"
echo "this is a test line for $tempfile1" >&7
echo "this is a test line for $tempfile2" >&8
