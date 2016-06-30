#!/bin/zsh

value=$(printf %d $(xbacklight | bc -l))

if [ $value -le 15 ]
then
	exit 0
else
	xbacklight -dec 5
	notify-send "Luminosità $(printf %d $(xbacklight | bc -l))%"
	exit 0
fi
