#!/bin/bash
#passing parameters to your function

function addem {
 if [ $# -eq 0 ] || [ $# -gt 2 ]
 then
  echo -1
 elif [ $# -eq 1 ]
 then 
  echo $[ $1 + $1 ]
 else
  echo $[ $1 + $2 ]
 fi
}


echo -n "adding 10 and 15: "
value=$(addem 10 15)
echo $value
#
echo -n "lets try adding just one number: "
value=$(addem 10)
echo $value
#
echo -n "now try adding no numbers: "
value=$(addem)
echo $value
#
echo -n "finally, try adding three numbers: "
value=$(addem 10 15 20)
echo $value
