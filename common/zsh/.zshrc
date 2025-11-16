#            _              
#    _______| |__  _ __ ___ 
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__ 
# (_)___|___/_| |_|_|  \___|
#                           
# -----------------------------------------------------
# ML4W zshrc loader
# -----------------------------------------------------

# DON'T CHANGE THIS FILE

# You can define your custom configuration by adding
# files in ~/.config/zshrc 
# or by creating a folder ~/.config/zshrc/custom
# with you own zshrc configuration
# -----------------------------------------------------

## if [ -d ~/.config/zshrc/custom ] ;then
##     for f in ~/.config/zshrc/custom/*; do source $f; done
## else
##     for f in ~/.config/zshrc/*; do source $f; done
## fi
export PATH=$PATH:/home/aura/.spicetify


# ----------------------------------------------------------------------------------------------------------


# -----------------------------------------------------
# Exports
# -----------------------------------------------------
export EDITOR=nvim
export PATH="/usr/lib/ccache/bin/:$PATH"
export ZSH="$HOME/.oh-my-zsh"
export JAVA_HOME="/usr/lib/jvm/java-21-openjdk/"

# ----------------------------------------------------------------------------------------------------------


# -----------------------------------------------------
# CUSTOMIZATION
# -----------------------------------------------------
# terminal customization (i think)
# will replace with starship
POSH=agnoster

# -----------------------------------------------------
# oh-myzsh themes: https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# -----------------------------------------------------
# ZSH_THEME=robbyrussell

# -----------------------------------------------------
# oh-myzsh plugins
# -----------------------------------------------------
# plugin framework for zsh. will prove useful. probably.
plugins=(
    git
    sudo
    web-search
    archlinux
    zsh-autosuggestions
    zsh-syntax-highlighting
    fast-syntax-highlighting
    copyfile
    copybuffer
    dirhistory
)

# Set-up oh-my-zsh
# ~/.oh-my-zsh/oh-my-zsh.sh
source $HOME/oh-my-zsh.sh

# -----------------------------------------------------
# Set-up FZF key bindings (CTRL R for fuzzy history finder)
# -----------------------------------------------------
# fuzzy finder. it's surprisingly useful. will keep it in mind
source <(fzf --zsh)

# zsh history
# it's the terminal history, up to 10k items. cool.
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# -----------------------------------------------------
# Prompt
# -----------------------------------------------------
# eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"
#
# uhhhh. what. a theme? i think. for ohmyposh.
# it uses a json schema, so that's something.
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/EDM115-newline.omp.json)"

# Shipped Theme
# eval "$(oh-my-posh init zsh --config /usr/share/oh-my-posh/themes/agnoster.omp.json)"


# ----------------------------------------------------------------------------------------------------------


# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------

# -----------------------------------------------------
# General
# -----------------------------------------------------
alias c='clear'
alias nf='fastfetch'
alias pf='fastfetch'
alias ff='fastfetch'
alias ls='eza -a --icons=always'
alias ll='eza -al --icons=always'
alias lt='eza -a --tree --level=1 --icons=always'
alias shutdown='systemctl poweroff'
alias v='$EDITOR'
alias vim='$EDITOR'
alias ts='~/.config/ml4w/scripts/snapshot.sh'
alias wifi='nmtui'
## alias cleanup='~/.config/ml4w/scripts/cleanup.sh'
alias ascii='~/.config/ml4w/scripts/figlet.sh'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

# -----------------------------------------------------
# Custom
# ----------------------------------------------------

alias spt='spotify_player'
alias gdl='gallery-dl'
alias aur-update='aura -Ayua --ignore ml4w-hyprland --ignore spotify --ignore libcava --ignore clion --ignore intellij-idea-ultimate-edition'
alias arch-update='aura -B && aura -Syu'
alias mpv-hdr='ENABLE_HDR_WSI=1 mpv --vo=gpu-next --target-colorspace-hint --gpu-api=vulkan --gpu-context=waylandvk'
alias dotswitch='~/.dotfiles/dotswitch.sh'
alias warp='~/.dotfiles/common/scripts/warp.sh'
alias wallpaper-space='cd ~/Pictures/wallpaper && ~/Pictures/wallpaper/fix.sh && cd ~'
alias dis='~/.dotfiles/common/scripts/vencord.sh'
alias fusee='~/.dotfiles/common/scripts/fusee.sh'
alias tabscreen='~/.dotfiles/common/scripts/tab-screen.sh'



export GPG_TTY=($tty)

# ----------------------------------------------------------------------------------------------------------


# -----------------------------------------------------
# AUTOSTART
# -----------------------------------------------------

# -----------------------------------------------------
# Pywal
# -----------------------------------------------------
# this one is somewhat encoded. it's the colors, from what i can understand
# colors for the terminal, must be updated for it to work correctly
# cat ~/.cache/wallust/sequence

# -----------------------------------------------------
# Fastfetch
# -----------------------------------------------------
# shows fastfetch on terminal startup.
# customize with krabby
# if [[ $(tty) == *"pts"* ]]; then # pure terminal emulation? each terminal has a different number, but the tty is the same so
#    fastfetch #--config examples/13
# else
#     echo
#     if [ -f /bin/qtile ]; then
#         echo "Start Qtile X11 with command Qtile" # WHY. I SPECIFICALLY CHOSE HYPRLAND (modularization yada yada)
#     fi
#     if [ -f /bin/hyprctl ]; then
#         echo "Start Hyprland with command Hyprland"
#     fi
# fi


# ----------------------------------------------------------------------------------------------------------


## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/aura/.dart-cli-completion/zsh-config.zsh ]] && . /home/aura/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

alias zed='/home/aura/.local/bin/zed.app/bin/zed'
alias code='codium --enable-features=UseOzonePlatform,WaylandWindowDecorations --ozone-platform=wayland'
___MY_VMOPTIONS_SHELL_FILE="${HOME}/.jetbrains.vmoptions.sh"; if [ -f "${___MY_VMOPTIONS_SHELL_FILE}" ]; then . "${___MY_VMOPTIONS_SHELL_FILE}"; fi



if [[ "$TERM" != "xterm" && "$TERM" != "xterm-256color" ]]; then
    fastfetch
fi