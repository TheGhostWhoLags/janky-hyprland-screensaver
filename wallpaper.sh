#!/bin/bash

WALLPAPER_DIRECTORY="/home/steam/.config/wallpaper"
while true
do
    WALLPAPER=$(find "$WALLPAPER_DIRECTORY" -type f | shuf -n 1)
    hyprctl hyprpaper wallpaper "HDMI-A-1, $WALLPAPER, cover"
    sleep 300
done
exit
