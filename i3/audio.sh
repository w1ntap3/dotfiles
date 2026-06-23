#!/usr/bin/env bash

STEP=5
SINK="@DEFAULT_SINK@"

get_vol () {
  pactl get-sink-volume "$SINK" | grep -o '[0-9]\+%' | head -1 | tr -d '%'
}

case "$1" in
  up)
    vol=$(get_vol)
    new=$((vol + STEP))
    if [ $new -gt 100 ]; then new=100; fi
    pactl set-sink-volume "$SINK" "${new}%"
    ;;

  down)
    vol=$(get_vol)
    new=$((vol - STEP))
    if [ $new -lt 0 ]; then new=0; fi
    pactl set-sink-volume "$SINK" "${new}%"
    ;;

  mute)
    pactl set-sink-mute "$SINK" toggle
    ;;
esac

killall -SIGUSR1 i3status
