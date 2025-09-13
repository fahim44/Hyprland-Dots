#!/usr/bin/env python3

import os
import json
import re

output = os.popen("wttrbar --ampm --observation-time").read()

print(output)

# now cache simple output for lockscreen
output = os.popen("wttrbar --ampm --nerd --hide-conditions").read()
obj = json.loads(output)
tooltip = obj['tooltip']

# tooltip text contains html tags. We need to remove these
CLEANR = re.compile('<.*?>')
cleanText = re.sub(CLEANR, '', tooltip)

# We will only show the initial header for the lockscreen, no need to show details view
simpleWeather = cleanText[:cleanText.find('Today')].strip()

# Save the text into cache file, so the lockscreen can use it
try:
  with open(os.path.expanduser("~/.cache/.weather_cache"), "w") as file:
    file.write(simpleWeather)
except Exception as e:
  print(f"Error writing to cache: {e}")
