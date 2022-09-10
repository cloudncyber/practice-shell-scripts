#!/bin/bash
#storing standard STDOUT, then coming back to it

exec 3>&1
exec 1>testout2

echo "this should store in the output file"
echo "along with this line"

exec 1>&3

echo "now things should be back to normal"
