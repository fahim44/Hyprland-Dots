#!/bin/bash

# Check if rofi is already running
if pidof rofi >/dev/null; then
	pkill rofi
fi

rofi -modi clipboard:~/.config/hypr/UserScripts/cliphist_img/cliphist-rofi-img -show clipboard -show-icons
