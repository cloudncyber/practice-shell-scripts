#!/bin/bash
function processAnswer {
 case $ANSWER in
  y|Y|YES|yes|Yes|yEs|yeS|YEs|yES )
  #If user answers "yes", do nothing.
  ;;
  *)
  #If user answers anything but "yes", exit script
  echo
  echo $EXIT_LINE1
  echo $EXIT_LINE2
  echo
  exit
  ;;
 esac

 #clean-up
 unset EXIT_LINE1
 unset EXIT_LINE2
}

ANSWER="y"
EXIT_LINE1="are you okay?"
EXIT_LINE2="like okay okay?"
processAnswer
