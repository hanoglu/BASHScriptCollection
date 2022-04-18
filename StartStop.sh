#!/bin/bash

# SC.sh
# Author: Yusuf Hanoğlu

# Get pid number of active window
PID=`xdotool getwindowfocus getwindowpid`
# You should change plasmashell to gnome-shell if you use gnome desktop
# PIDSHELL=`pgrep "gnome-shell"` # For gnome
PIDSHELL=`pgrep "plasmashell"` # For kde plasma
# Stop script if default shell is active
if [[ $PID == $PIDSHELL ]];then
exit
fi
BASLIK=`xdotool getwindowfocus getwindowname`
# get status of $PID process
DURUM=`ps aux | awk -v pid=$PID '{if($2==pid){print $8}}'`
# If status starts with T or t (terminated state) set $DURUM 'true'
TERM=`echo $DURUM | awk '{if(substr($1, 1, 1) ~ /^(T|t)/){print "true"}else{print "false"}}'`
# Send STOP or CONT signals according to $DURUM
if $TERM;then
kill -CONT $PID
# Get original window title back from SC-{user} file in tmp directory
ESKIBASLIK=`cat "/tmp/SC-$(whoami)" | awk -F "€" -v pid=$PID '{if($1==pid){print $2;exit}}'`
# Remove window title from tmp file
cat "/tmp/SC-`whoami`" | awk -F "€" -v pid=$PID '{if($1 != pid){print $0}}' > "/tmp/SC-`whoami`-TMP"
rm -f "/tmp/SC-`whoami`"
mv "/tmp/SC-`whoami`-TMP" "/tmp/SC-`whoami`"
xdotool getwindowfocus set_window --name "$ESKIBASLIK"
else
kill -STOP $PID
echo "$PID€$BASLIK" >> "/tmp/SC-`whoami`"
xdotool getwindowfocus set_window --name "*** STOPPED ***"
fi
