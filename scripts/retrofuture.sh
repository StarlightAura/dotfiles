#!/usr/bin/bash

gsettings set org.gnome.desktop.interface gtk-theme diinki-retro-dark
gsettings set org.gnome.desktop.interface icon-theme FairyWren_Dark

ln -sfn ~/.dotfiles/retrofuture/hypr ~/.config
ln -sfn ~/.dotfiles/retrofuture/waybar ~/.config
ln -sfn ~/.dotfiles/retrofuture/wofi ~/.config
ln -sfn ~/.dotfiles/retrofuture/kitty ~/.config
ln -sfn ~/.dotfiles/retrofuture/eww ~/.config
ln -sfn ~/.dotfiles/retrofuture/sway ~/.config

pkill waybar && hyprctl dispatch exec waybar
hyprctl reload