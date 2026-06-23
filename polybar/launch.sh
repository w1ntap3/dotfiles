#!/usr/bin/env bash

# 1. Terminate any currently running polybar instances safely
killall -q polybar

# 2. Wait until the old processes have actually shut down (max 3 seconds)
for i in {1..6}; do
    if ! pgrep -u "$(whoami)" -x polybar >/dev/null; then
        break
    fi
    sleep 0.5
done

# 3. Just run polybar
polybar main &
