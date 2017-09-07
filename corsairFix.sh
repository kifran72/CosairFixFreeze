#!/bin/bash
corsairId=$(xinput --list | grep "Corsair Corsair VOID Wireless Gaming Dongle" | grep -oP '(?<=id=)\d*')
if [ -z "$corsairId" ]; then
  echo "Corsair VOID Dongle was not found!"
else
  xinput set-int-prop $corsairId "Device Enabled" 8 0
fi
