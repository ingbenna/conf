#!/bin/zsh

sleep .1
notify-send "Volume: "$(pacmd list-sinks | grep -A 15 '* index' | awk '/volume: front/{print $5}')""
