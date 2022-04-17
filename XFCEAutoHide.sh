#!/bin/bash
# Author: Yusuf Hanoğlu

suan=$(xfconf-query -c xfce4-panel -p /panels/panel-0/autohide-behavior)

if [ $suan -eq 1 ];then

xfconf-query -c xfce4-panel -p /panels/panel-0/autohide-behavior -s 0
notify-send -t 500 "Panel" "Auto panel hide DISABLED"
elif [ $suan -eq 0 ];then

xfconf-query -c xfce4-panel -p /panels/panel-0/autohide-behavior -s 1
notify-send -t 500 "Panel" "Auto panel hide enabled"
fi

