#!/bin/bash
#testing the exit status of a function II

func1() {
 ls -l badfile
 echo "this was a test of a bad command"
}

echo "testing the function:"
func1
echo "the exit status is: $?"
