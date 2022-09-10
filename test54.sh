#!/bin/bash
#NEVER USE A CONTINUE IN A WHILE OR UNTIL LOOP


#continuing an outer loop

for (( a = 1; a <=5; a++ ))
do
 echo "iteration $a:"
 for (( b = 1; b < 3; b++ ))
 do
  if [ $a -gt 2 ] && [ $a -lt 4 ]
  then
   continue 2
  fi
  var3=$[ $a * $b ]
  echo "   The result of $a * $b is $var3"
 done
done
