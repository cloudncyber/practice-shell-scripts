#!/bin/bash
#using zenity to create menu

temp=$(mktemp -t alib.XXXXXX)
temp2=$(mktemp -t alab.XXXXXX)

function diskspace {
 df -k > $temp
 zenity --text-info --title "Disk space" --filename=$temp --width 750 --height 10
}

function whoseon {
 who > $temp
 zenity --text-info --title "logged in users" --filename=$temp --width 500 --height 10
}

function memusage {
 cat /proc/meminfo > $temp
 zenity --text-info --title "memory usage" --filename=$temp --width 300 --height 500
}

while [ 1 ]
do
 zenity --list --radiolist --title "Sys Admin Menu" --column "Select" --column "Menu Item" FALSE "Display diskspace" FALSE "Display users" FALSE "Display memory usage" FALSE "Exit" > $temp2
if [ $? -eq 1 ]
then
 break
fi
selection=$(cat $temp2)
case $selection in
  "Display disk space")
    diskspace ;;
  "Display users")
    whoseon ;;
  "Display memory usage")
    memusage ;;
  Exit)
break ;;
     *)
zenity --info "Sorry, invalid selection"
esac
done
