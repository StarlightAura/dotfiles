#!/usr/bin/bash

gsettings set org.gnome.desktop.interface gtk-theme Adwaita
gsettings set org.gnome.desktop.interface icon-theme Papirus
    
ln -sfn ~/.dotfiles/material/.config/hypr ~/.config
ln -sfn ~/.dotfiles/material/.config/waybar ~/.config

pkill waybar && hyprctl dispatch exec waybar
hyprctl reload