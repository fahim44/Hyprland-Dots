#!/bin/bash
# This is for custom version of waybar hyprsunset which activates / deactivates hyprsunset

PROCESS="hyprsunset"
COMMAND="hyprsunset --temperature 3500"

if [[ "$1" == "status" ]]; then
	sleep 1
	if pgrep -x "$PROCESS" >/dev/null; then
		echo '{"text": "RUNNING", "class": "active", "tooltip": "hyprsunset IS ACTIVE\nLeft Click: Deactivate"}'
	else
		echo '{"text": "NOT RUNNING", "class": "notactive", "tooltip": "hyprsunset is NOT ACTIVE\nLeft Click: activate"}'
	fi
elif [[ "$1" == "toggle" ]]; then
	if pgrep -x "$PROCESS" >/dev/null; then
		pkill "$PROCESS"
	else
		$COMMAND
	fi
else
	echo "Usage: $0 {status|toggle}"
	exit 1
fi
