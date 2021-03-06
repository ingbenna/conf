#!/bin/zsh

ac_status=$(cat /sys/class/power_supply/AC0/online)

echo $ac_status
mpd &
if [ $ac_status -eq 0 ]; then
	echo -n 2441 > /sys/class/backlight/intel_backlight/brightness
	cpupower frequency-set -g powersave
else
	echo -n 4882 > /sys/class/backlight/intel_backlight/brightness
	cpupower frequency-set -g performance
fi
exit 0
