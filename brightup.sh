#!/bin/bash
curr=`cat /sys/class/backlight/intel_backlight/actual_brightness`
if [ $curr -lt 4710 ]; then
curr=$((curr+235));
echo $curr > /sys/class/backlight/intel_backlight/brightness;
fi
