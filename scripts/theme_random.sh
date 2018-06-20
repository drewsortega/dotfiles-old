#!/bin/bash
file=$(find ~/.wallpapers | shuf -n 1)
echo $file
~/scripts/theme.sh $file
