#!/bin/bash
#using the case command
#
named=$1
case $named in
rich | barbara)
 echo "Welcome, $named"
 echo "please enjoy your visit";;
jessica)
 echo "do not forget to log off when you're done";;
jide)
 echo "bingo!!! welcome comrade";;
*)
 echo "sorry, you are not allowed here";;
esac
