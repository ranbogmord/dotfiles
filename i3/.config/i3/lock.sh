#!/bin/bash
# suspend message display
pkill -u "$USER" -USR1 dunst

# lock the screen
i3lock
sleep 5
notify-send "locked"

# resume message display
#pkill -u "$USER" -USR2 dunst

