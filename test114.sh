#!/bin/bash
#test closing file descriptors
exec 3> testout

echo "this is a test line of data" >&3

exec 3>&-

echo "this wont work" >&3

