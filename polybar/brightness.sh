#!/bin/bash

p=$(brightnessctl | grep -oP '\(\K[0-9]+(?=%)')

icon=""

echo "$icon $p%"
