#!/bin/bash

volume=$(pamixer --get-volume-human)  # ou use pactl / amixer se não tiver pamixer

if pamixer --get-mute | grep true > /dev/null; then
    echo "󰝛  Mute"
else
    echo "  $volume"
fi

