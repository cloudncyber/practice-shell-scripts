#!/bin/bash
#demonstrating multi-shift position
#
echo
echo "The original parameters: $*"
shift 2
echo "Here is the new first parameter: $1"
echo "\$* is now equals to $*" 
