#!/bin/sh
# nm-applet &

# numlock
numlockx on &

# background
feh --bg-scale ~/.config/backgrounds/bluemountain.jpg &

# compositor
picom --config ~/.config/picom/picom.conf &

# sxhkd
sxhkd -c ~/.config/qtile/sxhkd/sxhkdrc &

# Notifications
dunst &

