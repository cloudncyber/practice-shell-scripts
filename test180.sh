#!/bin/bash
function getAnswer {
 unset ANSWER
 ASK_COUNT=0

 while [ -z "$ANSWER" ] #while no answer is given, keep asking.
  do
  ASK_COUNT=$[ $ASK_COUNT + 1 ]

   case $ASK_COUNT in  #if user gives no answer in time alloted
    2)
    echo
    echo "Please answer the question."
    echo
    ;;
    3)
    echo
    echo "One last try... please answer the question."
    echo
    ;;
    4)
    echo
    echo "Since you refuse to answer the question..."
    echo "exiting program"
    echo
    exit
    ;;
   esac

  echo

  if [ -n "$LINE2" ]
   then  #print 2 lines
    echo $LINE1
    echo -e $LINE2" \c"
   else
    echo -e $LINE1" \c"
  fi

  #allow 0 seconds to answer before time-out
  read -t 60 ANSWER
 done
}

LINE1="what's your best color?"
getAnswer
