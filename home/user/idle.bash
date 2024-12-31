#!/bin/bash
# we assume 120 seconds for the UI to be shown
sleep 120
# after 30 seconds idle we turn the DSI-1 screen of, note that touch is still active and will turn the screen back on!
XDG_RUNTIME_DIR=/run/user/1000 swayidle -w timeout 30 "wlr-randr --output DSI-1 --off" resume "wlr-randr --output DSI-1 --on"
