#!/bin/bash
#my script functions

function addup {
 echo $[ $1 + $2 ]
}

function multi {
 echo $[ $1 * $2 ]
}

function divide {
 if [ $2 -ne 0 ]
 then
  echo $[ $1 / $2 ]
 else
  echo -1
 fi
}
