#!/bin/bash

if [ -f /tmp/inputdetect ]; then
  exit 1

touch /tmp/inputdetect

hyprctl dispatch workspace 9
trap 'pkill --signal SIGTERM --parent $$' EXIT
libinput debug-events | grep -m1 "KEY\|MOTION" > /tmp/inputdetect &
jstest --event /dev/input/js0 | grep -m1 "type 1,\|type 2," > /tmp/inputdetect &
dbus-monitor | grep -m1 "interface=org.freedesktop.ScreenSaver; member=Inhibit" > /tmp/inputdetect &
./wallpaper.sh &

systemd-inhibit --what=idle inotifywait -e modify /tmp/inputdetect
rm /tmp/inputdetect
hyprctl dispatch workspace 1
exit
