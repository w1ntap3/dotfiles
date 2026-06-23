#!/usr/bin/env bash

# 1. Terminate any currently running polybar instances safely
killall -q polybar

# 2. Wait until the old processes have actually shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 0.5; done

# 3. Just run polybar
polybar &
