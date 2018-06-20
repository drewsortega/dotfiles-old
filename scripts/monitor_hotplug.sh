#!/bin/sh

set -e

HDMI_STATUS=$(</sys/class/drm/card0/card0-DP-1/status )

if [ "connected" == "$HDMI_STATUS" ]; then
        /usr/bin/xrandr --output DP1 --right-of eDP1 --auto
        /usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "HDMI connected"
else
        /usr/bin/xrandr --output DP1 --off
        /usr/bin/notify-send --urgency=low -t 5000 "Graphics Update" "HDMI disconnected"
        exit
fi
