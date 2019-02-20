#!/bin/bash
#My Telegram https://t.me/jhalo

# ---------------------------- input

source /opt/dynamic-wallpaper/settings.cfg

# ---------------------------- varsOut

ratio_aspect="$select_ratio_aspect"
sound="$select_sound"
url="$select_url"

# ---------------------------- conds

if [ "$sound" = false ] ; then
    sound="--no-audio"
fi
if [ "$ratio_aspect" = "Adaptativo" ]; then
    ratio_aspect="--panscan=1.0"
elif [ "$ratio_aspect" = "Original" ]; then
    ratio_aspect="--no-video-aspect"
fi

# ---------------------------- insts

killall xwinwrap
xwinwrap -a -ni -o 1.0 -fs -s -st -sp -b -nf -- mpv -wid WID -quiet $sound $ratio_aspect $url -loop 0