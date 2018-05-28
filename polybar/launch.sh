#!/usr/bin/env sh

# Terminate already running instances of the bar
killall -q polybar

# Wait for the processes to shut down
while pgrep -x polybar >/dev/null; do sleep 1; done


# if type "xrandr"; then
#     for m in $(xrandr --query | grep "connected" | cut -d' ' -f1); do
#         MONITOR=$m polybar top & $m polybar bot &
#     done
# else
#     polybar top & polybar bot &
# fi

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload top &
    MONITOR=$m polybar --reload bot &
  done
else
  polybar --reload top &
  polybar --reload bot &
fi

echo "Launched the bars..."
