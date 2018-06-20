#!/bin/bash

nextBrightness=$(awk '{ print $1+20}' /sys/class/backlight/intel_backlight/brightness)
echo $nextBrightness
if [ $nextBrightness -lt 937 ]
then
    tee /sys/class/backlight/intel_backlight/brightness <<< $nextBrightness
else
    tee /sys/class/backlight/intel_backlight/brightness <<< 937
fi
