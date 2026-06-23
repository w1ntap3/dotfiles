#!/bin/bash

CHANGE="$1"

if [[ -z "$CHANGE" ]]; then
    echo "Usage: brightness.sh [+|-]10"
    exit 1
fi

CURRENT=$(brightnessctl get)
MAX=$(brightnessctl max)
CURRENT_PERCENT=$((CURRENT * 100 / MAX))

NEW_PERCENT=$((CURRENT_PERCENT + CHANGE))

if [[ $NEW_PERCENT -lt 10 ]]; then
    NEW_PERCENT=10
elif [[ $NEW_PERCENT -gt 100 ]]; then
    NEW_PERCENT=100
fi

brightnessctl set "$NEW_PERCENT%"
