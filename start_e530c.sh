#!/bin/bash

xinput disable "$( xinput | grep TouchPad | grep -o -E "id=[0-9]+" | sed 's/id=//')"

echo 0 off > /proc/acpi/ibm/led

cat /sys/class/backlight/intel_backlight/max_brightness > /sys/class/backlight/intel_backlight/brightness
