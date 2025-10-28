#!/bin/bash

state="$(cat ~/.config/hypr/UserScripts/Weather-State)"

if [[ "$1" == "status" ]]; then
  if [[ "$state" == "0" ]]; then
    ~/.config/hypr/UserScripts/Weather.py
  else
    ~/.config/hypr/UserScripts/Wttrbar.py
  fi

elif [[ "$1" == "toggle" ]]; then
  if [[ "$state" == "0" ]]; then
    echo '1' >~/.config/hypr/UserScripts/Weather-State
  else
    echo '0' >~/.config/hypr/UserScripts/Weather-State
  fi

  ~/.config/hypr/scripts/Refresh.sh

else
  echo "Usage: $0 {status|toggle}"
  exit 1
fi
