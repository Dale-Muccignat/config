#!/usr/bin/env bash

x="$(xsetwacom list | grep stylus | tr "\t" " " | cut -d " " -f13)"
y="$(xsetwacom list | grep eraser | tr "\t" " " | cut -d " " -f13)"

xsetwacom set $x MapToOutput DisplayPort-1
xsetwacom set $y MapToOutput DisplayPort-1

xsetwacom set $x Rotate ccw
xsetwacom set $y Rotate ccw
