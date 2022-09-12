#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
if type "xrandr"; then
  for m in $(polybar --list-monitors | cut -d":" -f1); do
	  is_primary=$(polybar --list-monitors | grep $m | grep "primary")
	  if ["$is_primary" = ""]; then
	    MONITOR=$m polybar --reload secondary &
	  else
	    PRIMARY=$m polybar --reload main &
	  fi
  done
else
  polybar --reload main &
fi
