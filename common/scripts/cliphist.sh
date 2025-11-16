#! /bin/bash
killall wofi || cliphist list | wofi -S dmenu | cliphist decode | wl-copy