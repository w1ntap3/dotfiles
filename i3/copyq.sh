#!/bin/bash

killall -q copyq

while pgrep -u $UID -x copyq >/dev/null; do sleep 1; done

copyq
