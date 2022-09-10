#!/bin/bash
#using an alternative file descriptor

exec 3>testout1

echo "this should display on the monitor"
echo "and this should be stored in the file" >&3
echo "then this should be back on the monitor"
