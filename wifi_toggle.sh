#!/bin/zsh

#status_wifi=$(awk '/wifi/{print $3}' <<< $(nmcli dev))
status_wifi=$(nmcli radio wifi)

if [ $status_wifi = "abilitato" ]; then
	nmcli radio wifi off
	notify-send "WIFI OFF"
else
	nmcli radio wifi on
	notify-send "WIFI ON"
fi
exit 0
