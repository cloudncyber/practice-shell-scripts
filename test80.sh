#!/bin/bash
#grabbing the last parameter
params=$#
echo
echo the last parameter is $params
echo the last parameter is ${!#}
echo script-name: "$0"
echo
