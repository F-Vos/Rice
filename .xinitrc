#!/bin/sh

sh ~/.scripts/bar &
sh ~/.scripts/wallpaper &
xcompmgr -c &

exec dbus-launch --sh-syntax --exit-with-session dwm

