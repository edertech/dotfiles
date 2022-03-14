#!/bin/sh
# xrandr --output eDP-1 --primary --mode 1920x1080 --pos 320x1440 --rotate normal --output HDMI-1 --mode 2560x1440 --scale-from 2560x1080 --rotate normal --output DP-1 --off --output HDMI-2 --off
xrandr --output eDP-1 --primary --mode 1920x1080 --pos 320x1440 --rotate normal --output HDMI-1 --mode 3840x2160 --scale-from 2560x1080 --rotate normal --output DP-1 --off --output HDMI-2 --off
nitrogen --restore
