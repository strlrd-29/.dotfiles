#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log

for m in $(polybar --list-monitors | cut -d":" -f1); do
  MONITOR=$m polybar --reload main 2>&1 | tee -a /tmp/polybar1.log &
  disown
done

echo "Bars launched..."
