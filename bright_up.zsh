#!/bin/zsh

value=$(printf %d $(xbacklight | bc -l))

if [ $value -ge 100 ]
then
	exit 0
else
	xbacklight -inc 5
	notify-send "Luminosità $(printf %d $(xbacklight | bc -l))%"
	exit 0
fi
