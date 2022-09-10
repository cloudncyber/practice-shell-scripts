#!/bin/bash
#redirecting output to different locations
#the placement of the exec command matters because scripts are executed
#line by line, you always place them in a position you need them

exec 2>testerror
exec 1>testout
echo "this is the start of the script"
echo "now redirecting all output to another location"

#exec 1>testout

echo "this output should go to the testout file"
echo "but this should go to the testerror file" >&2
