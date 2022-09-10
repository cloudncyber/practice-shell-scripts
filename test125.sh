#!/bin/bash
#using the tee command for logging

tempfile=test125file

echo "this is the start of the test" | tee $tempfile
echo "this is the second line of the test" | tee -a $tempfile
echo "this is the end of the test" | tee -a $tempfile
