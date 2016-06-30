#!/bin/zsh

ext_mouse=$(xinput | grep -i "usb mouse" | wc -l)

echo $ext_mouse

if [ $ext_mouse -eq 1 ]; then
	synclient TouchpadOff=1
else
	synclient TouchpadOff=0
fi
exit 0
