#!/bin/bash

if [ -z $1 ]
then
    echo "Usage: $0 (loopback name)"
    echo "e.g.   $0 loopback"
    exit
fi

pactl load-module module-loopback
pactl unload-module module-loopback