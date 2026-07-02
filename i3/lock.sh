#!/bin/bash

i3lock \
  --blur 10x5 \
  --clock \
  --indicator \
  --radius 120 \
  --ring-width 20 \
  \
  --insidever-color=101512cc \
  --ringver-color=9adf84ff \
  \
  --insidewrong-color=171c19cc \
  --ringwrong-color=58725dff \
  \
  --inside-color=101512aa \
  --ring-color=6f9470ff \
  --line-color=00000000 \
  --separator-color=00000000 \
  \
  --keyhl-color=9adf84ff \
  --bshl-color=58725dff \
  \
  --time-color=c2d6bcff \
  --date-color=a6b4a8ff \
  --layout-color=76aa97ff \
  --verif-color=9adf84ff \
  --wrong-color=58725dff \
  \
  --time-str="%H:%M:%S" \
  --date-str="%a, %d %b" \
  \
  --greeter-text="pc is locked" \
  --greeter-color=6f9470ff \
  --greeter-pos="w/2:h/2+170" \
  \
  --time-pos="w/2:h/2-30" \
  --date-pos="w/2:h/2+30" \
  --time-size=30 \
  --date-size=30
