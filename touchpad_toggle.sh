#!/bin/zsh

status_touchpad=$(awk '/TouchpadOff/{print $3}' <<< $(synclient))

if [ $status_touchpad -eq 0 ]; then
	synclient TouchpadOff=1
	notify-send Touchpad OFF
else
	synclient TouchpadOff=0
	notify-send Touchpad ON
fi
exit 0
