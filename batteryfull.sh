#!/usr/bin/env bash

while true; do
  export DISPLAY=:0.0
  battery_percent=$(acpi -b | grep -P -o '[0-9]+(?=%)')
  if on_ac_power; then
    if [ "$battery_percent" -gt 78 ]; then
      #kdialog --title "Battery Complete" --sorry "Battery full.\nLevel: ${battery_percent}% "  #kde window dialog
      notify-send -u critical "Please unplug your AC adapter" "Battery level can charge above 80%" -i battery-full-charged  #critical notification to show even in fullscreen
      play ~/battery-notify-master/loud_alarm.mp3  #notify with sound
    fi
  fi
  sleep 60 # wait for 60 secs to notify again
done
