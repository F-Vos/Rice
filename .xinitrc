#!/bin/sh

sh ~/.scripts/bar &
sh ~/.scripts/screen_order &

exec dwm
