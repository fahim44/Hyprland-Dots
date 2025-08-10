#!/usr/bin/env python
import json
import subprocess
import os

os.system("vdirsyncer discover")
os.system("vdirsyncer sync")
data = {}
output = subprocess.check_output(
    'khal list now 7days --format "{start-end-time-style} {title}"', shell=True
).decode("utf-8")
lines = output.split("\n")
new_lines = []
for line in lines:
    line = line.translate(str.maketrans("", "", r""""&'<\}"""))
    if len(line) and line[0].isalpha():
        line = "\n<b>" + line + "</b>"
    new_lines.append(line)
output = "\n".join(new_lines).strip()
if "Today" in output:
    data["text"] = " "
else:
    data["text"] = " "
data["tooltip"] = output
print(json.dumps(data))
