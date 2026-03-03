#!/bin/bash

WALLPAPER_DIRECTORY="/home/steam/.config/wallpaper"
MONITOR="HDMI-A-1"

while true
do
    WALLPAPER=$(find "$WALLPAPER_DIRECTORY" -type f | shuf -n 1)
    hyprctl hyprpaper wallpaper "$MONITOR, $WALLPAPER, cover"
    sleep 300
done
exit 1
