#!/bin/bash

nextBrightness=$(awk '{ print $1-20}' /sys/class/backlight/intel_backlight/brightness)
echo $nextBrightness
if [ $nextBrightness -gt 1 ]
then
    tee /sys/class/backlight/intel_backlight/brightness <<< $nextBrightness
else
    tee /sys/class/backlight/intel_backlight/brightness <<< 1
fi
