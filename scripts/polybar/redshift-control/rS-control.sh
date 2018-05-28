#!/bin/sh

get_status () {
   isRun=$(ps -e | grep redshift)
   if [ -z "$isRun" ]; then 
      echo "Off"
   else
      echo "On"
   fi
} 

print () {
   if [[ $1 == "Off" ]]; then
      echo "%{F#ffffff} " 
   else
      echo "%{F#FD6C2E} " 
   fi
}

toggle () {
   if [[ $1 == "Off" ]]; then
      redshift -l -23.197833:-50.63788 -t 5500K:3500K -r > /dev/null 2>&1 & disown
   else
      killall -p redshift 
      redshift -x
   fi
}

status=$(get_status)
case "$1" in
   --toggle)
      toggle $status
      ;;
   *)
      print $status
      ;;
esac