#!/bin/bash
# Author: Yusuf Hanoğlu

AYGIT="default"
if [ $1 = "-start" ]; then
pactl load-module module-null-sink
elif [ $1 = "-anonym" ]; then
sox -t pulseaudio default -t pulseaudio $AYGIT pitch -800
elif [ $1 = "-normal" ]; then
sox -t pulseaudio default -t pulseaudio $AYGIT
elif [ $1 = "-male" ]; then
sox -t pulseaudio default -t pulseaudio $AYGIT pitch -400
elif [ $1 = "-female" ]; then
sox -t pulseaudio default -t pulseaudio $AYGIT pitch +750
elif [ $1 = "-stop" ]; then
pactl unload-module module-null-sink
echo "Succesfully removed"
elif [ $1 = "--help" ]; then
echo "-start: Creates an empty loop device"
echo "-stop: Removes loop device"
echo ""
echo "-anonym: Anonymous sound effect"
echo "-male: Male sound effect"
echo "-female: Female sound effect"
echo "-normal: Just reflects sound to loop device"
fi
