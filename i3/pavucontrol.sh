#!/bin/bash

pkill -f pavucontrol
pavucontrol > /dev/null 2>&1 &
