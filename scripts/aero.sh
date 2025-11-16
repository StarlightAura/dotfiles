#!/usr/bin/bash

gsettings set org.gnome.desktop.interface gtk-theme diinki-aero
gsettings set org.gnome.desktop.interface icon-theme crystal-remix-icon-theme-diinki-version

ln -sfn ~/.dotfiles/diinki-aero/.config/hypr ~/.config
ln -sfn ~/.dotfiles/diinki-aero/.config/waybar ~/.config
ln -sfn ~/.dotfiles/diinki-aero/.config/wofi ~/.config
ln -sfn ~/.dotfiles/diinki-aero/.config/kitty ~/.config
ln -sfn ~/.dotfiles/diinki-aero/.config/eww ~/.config
ln -sfn ~/.dotfiles/diinki-aero/.config/sway ~/.config

pkill waybar && hyprctl dispatch exec waybar
hyprctl reload