#!/usr/bin/env bash

while true; do
  export DISPLAY=:0.0
  battery_percent=$(acpi -b | grep -P -o '[0-9]+(?=%)')
  if on_ac_power; then  # if charger is plugged
  
    if [ "$battery_percent" -gt 78 ]; then  #charge greater than 78 ~80
      notify-send -u critical "Please unplug your AC adapter" "Battery level can charge above 80%" -i battery-full-charged  #critical notification to show even in fullscreen
      play ~/battery-notify-linux/loud_alarm.mp3  #notify with sound
    fi
    
    else  # if charger is unplugged
    
     if [ "$battery_percent" -lt 42 ]; then  #charge less than 42 ~40
       notify-send -u critical "Please plug your AC adapter" "Battery level can discharge below 40%" -i battery-low  #critical notification to show even in fullscreen
       play ~/battery-notify-linux/loud_alarm.mp3  #notify with sound
     fi
    
  fi
  
  sleep 60 # wait for 60 secs to notify again
done
