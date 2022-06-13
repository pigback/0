#!/bin/bash
while true
do
date +'%Y-%m-%d+%H:%M:%S' -d "+8 hour" | tr -t '\n' ' '; echo happy sleep s5
sh main.sh
sleep 5
date +'%Y-%m-%d+%H:%M:%S' -d "+8 hour" | tr -t '\n' ' '; echo happy sleep end
xdotool search --name "space" key "shift+r"
done