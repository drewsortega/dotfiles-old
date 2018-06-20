#!/bin/bash

currentVol=$(pamixer --get-volume)
echo $currentVol
pactl set-sink-mute 0 false
if [ $currentVol -lt 96 ]
then
    pactl set-sink-volume 0 +5%
else
    pactl set-sink-volume 0 100%
fi
echo $currentVol
