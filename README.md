# battery-notify-linux

This script notifies when battery is above 80% while charging (can customize the full charge percentage in script). 

## Setup Instructions

Install git (if already installed, ignore)

```sudo apt install git```

Clone this project in your home folder

```git clone https://github.com/s01k/battery-notify-linux```

Install battery information viewer

```sudo apt install acpi```

For playing the audio with notification

```sudo apt-get update```

```sudo apt-get install sox libsox-fmt-all```

Test the audio and notification by

```notify-send -u critical "Please unplug your AC adapter" "Battery level can charge above 80%" -i battery-full-charged && play ~/battery-notify-linux/loud_alarm.mp3```

To add custom music, copy any music file in "battery-full-notify-linux" folder, and change the music file name in
```play ~/battery-notify-linux/your file name.mp3```

Add the script in your startup (different DEs have different method, please check online for "add script/application in startup for linux mint")

## Sources

[battery-full-notification-KDE5 by jruedaq](https://github.com/jruedaq/battery-full-notification-KDE5)

[battery-full-notification by theArjun](https://github.com/theArjun/battery-full-notification)
