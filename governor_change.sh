#!/bin/zsh

actual_governor=$(cpupower frequency-info | head -n 9 | tail -n 1 | cut -d '"' -f 2)

if [ "$1" = "-i" ]; then
	echo $actual_governor
	exit 0
fi

if [ $actual_governor = "performance" ]; then
	cpupower frequency-set -g powersave
else
	cpupower frequency-set -g performance
fi
exit 0
