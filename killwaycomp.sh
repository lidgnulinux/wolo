#!/usr/bin/bash

if pgrep -x "dwl" > /dev/null; then
	killall dwl
elif pgrep -x "sway" > /dev/null; then
	killall sway
elif pgrep -x "labwc" > /dev/null; then
	killall labwc
elif pgrep -x "hikari" > /dev/null; then
	killall hikari
fi
