#!/bin/bash
pid_list=`xdotool search --name "space"`
xdotool windowfocus $pid_list
xdotool search --name "space" key "shift+r"
#refresh explorer
xdotool search --name "space" key "shift+r"
sleep 2
xdotool search --name "space" key "shift+s"
#stage all changes
sleep 2
xdotool search --name "space" key "shift+p"
#commit changes
sleep 10
xdotool search --name "space" type change
sleep 10
xdotool search --name "space" key "Return"
sleep 10
xdotool search --name "space" key "shift+n"
#git sync
sleep 10
xdotool search --name "space" key "Return"
xdotool search --name "space" key "shift+r"
xdotool search --name "space" key "shift+r"
xdotool search --name "space" key "shift+r"
date +'%Y-%m-%d+%H:%M:%S' -d "+8 hour" | tr -t '\n' ' '; echo "<- done time" 