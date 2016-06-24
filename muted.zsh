#!/bin/zsh

sleep .1
notify-send "Mute: "$(pacmd list-sinks | grep muted | awk '{print $2}')""
