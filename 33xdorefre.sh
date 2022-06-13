#!/bin/bash
#整个这个列表的快捷键都要自己设置，可以设置成别的，对应代码按键也要改！
pid_list=`xdotool search --name "space"`
xdotool windowfocus $pid_list
xdotool search --name "space" key "shift+r"
#refresh explorer 
xdotool search --name "space" key "shift+r"
#需要自己设置 vscode web 快捷键 refresh explorer 
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
#commit 需要输入内容
sleep 10
xdotool search --name "space" key "shift+n"
#git sync
sleep 10
xdotool search --name "space" key "Return"
xdotool search --name "space" key "shift+r"
xdotool search --name "space" key "shift+r"
xdotool search --name "space" key "shift+r"
date +'%Y-%m-%d+%H:%M:%S' -d "+8 hour" | tr -t '\n' ' '; echo "<- done time" 
