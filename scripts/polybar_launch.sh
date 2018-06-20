#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done
set -e

HDMI_STATUS=$(</sys/class/drm/card0/card0-DP-1/status )

if [ "connected" == "$HDMI_STATUS" ]; then
        polybar left &
        polybar right &
else
        polybar no-external &
fi

echo "Bars launched... $HDMI_STATUS"
