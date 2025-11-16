#!/usr/bin/bash

if [ -f ~/.dotfiles/AERO ] ; then ### SETS DOTS TO MATERIAL THEME (ML4W)
    gsettings set org.gnome.desktop.interface gtk-theme Adwaita
    gsettings set org.gnome.desktop.interface icon-theme Papirus
    rm ~/.dotfiles/AERO
    ln -sfn ~/.dotfiles/material/.config/hypr ~/.config
    ln -sfn ~/.dotfiles/material/.config/waybar ~/.config

    pkill waybar && hyprctl dispatch exec waybar
    hyprctl reload

else ### SETS DOTS TO FRUTIGER AERO THEME
    gsettings set org.gnome.desktop.interface gtk-theme diinki-aero
    gsettings set org.gnome.desktop.interface icon-theme crystal-remix-icon-theme-diinki-version
    touch ~/.dotfiles/AERO
    ln -sfn ~/.dotfiles/diinki-aero/.config/hypr ~/.config
    ln -sfn ~/.dotfiles/diinki-aero/.config/waybar ~/.config

    pkill waybar && hyprctl dispatch exec waybar
    hyprctl reload
fi