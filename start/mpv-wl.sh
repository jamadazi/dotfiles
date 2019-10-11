#!/bin/bash

URL="$(wl-paste)"

notify-send -t 4000 "playing '${URL}'"

mpv "${URL}"

notify-send -t 1000 "mpv exited"

