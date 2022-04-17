#!/bin/bash
# Author: Yusuf Hanoğlu

padID=`xinput | grep -i touchpad | grep -Po "id=[\w]+" | grep -Po "[\d]+"`
echo $padID
isEnabled=`xinput list-props $padID | grep "Device Enabled" | grep -Po ":[\W]+[\d]+" | grep -Po "[\d]+"`
if [[ $isEnabled == "1" ]];then
  xinput disable $padID
  notify-send "Touchpad DISABLED" --app-name="Device Manager" -t 2000
else
  xinput enable $padID
  notify-send "Touchpad enabled" --app-name="Device Manager" -t 2000
fi
echo $isEnabled
