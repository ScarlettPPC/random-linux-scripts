#!/bin/sh

# Find the line in "xrandr -q --verbose" output that contains current screen orientation and "strip" out current orientation.

rotation="$(xrandr -q --verbose | grep 'connected' | egrep -o  '\) (normal|left|inverted|right) \(' | egrep -o '(normal|left|inverted|right)')"

# Using current screen orientation proceed to rotate screen and input tools.

case "$rotation" in
    normal)
    # rotate to the right
    xrandr -o right
    xsetwacom set "Wacom ISDv4 E6 Pen stylus" rotate cw
    xsetwacom set "Wacom ISDv4 E6 Finger touch" rotate cw
    xsetwacom set "Wacom ISDv4 E6 Pen eraser" rotate cw
    ;;
    right)
    # rotate to normal
    xrandr -o normal
    xsetwacom set "Wacom ISDv4 E6 Pen stylus" rotate none
    xsetwacom set "Wacom ISDv4 E6 Finger touch" rotate none
    xsetwacom set "Wacom ISDv4 E6 Pen eraser" rotate none
    ;;
esac
