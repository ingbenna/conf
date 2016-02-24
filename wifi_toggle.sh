#!/bin/zsh

status_wifi=$(awk '/wifi/{print $3}' <<< $(nmcli dev))

if [ $status_wifi = "collegato" ]; then
	nmcli r wifi off
	notify-send "WIFI OFF"
else
	nmcli r wifi on
	notify-send "WIFI ON"
fi
exit 0
