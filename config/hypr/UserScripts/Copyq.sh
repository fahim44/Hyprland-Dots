#!/bin/bash

if ! pidof copyq >/dev/null; then
	copyq &
fi

copyq show
