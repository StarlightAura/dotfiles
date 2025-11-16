#!/usr/bin/bash
clear
echo "Select a dotfile configuration:"

# -------------------------------------
# Dotfiles Variables
# -------------------------------------
# Create variable, make script (and modify existing if new configs apply)

AERO="Frutiger Aero"
ML4W="ML4W original dots"
RETFU="Retrofuture"
CANCEL="Cancel"

DOTS=$(gum choose "$AERO" "$ML4W" "$RETFU" "$CANCEL") # Add variable to this list

# Cancel, exit the script
grep -q "$CANCEL" <<< "$DOTS" && clear && exit

echo "Dots selected: $DOTS"
gum confirm && clear || DOTS=$CANCEL

# -------------------------------------
# Dotfiles Changing Scripts
# -------------------------------------
# Template:
# grep -q "$VARIABLE" <<< "$DOTS" && gum spin --title "Changing dots..." -- sleep 2 && ~/.dotfiles/scripts/variable.sh

# Exit
grep -q "$CANCEL" <<< "$DOTS" && echo "Dots unchanged." && exit
# Frutiger Aero
grep -q "$AERO" <<< "$DOTS" && gum spin --title "Changing dots..." -- sleep 2 && ~/.dotfiles/scripts/aero.sh
# ML4W original
grep -q "$ML4W" <<< "$DOTS" && gum spin --title "Changing dots..." -- sleep 2 && ~/.dotfiles/scripts/ml4w.sh
# Retrofuture
grep -q "$RETFU" <<< "$DOTS" && gum spin --title "Changing dots..." -- sleep 2 && ~/.dotfiles/scripts/retrofuture.sh