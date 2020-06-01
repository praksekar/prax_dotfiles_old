#!/bin/bash

apt_programs=(
    hsetroot
    xdotool
    neovim
    git
    stow
    bspwm
    sxhkd
    dunst
    dmenu
    lemonbar
    ranger
    sxiv
    zathura
    zsh
    slock
    chromium-browser
    flameshot
    #fzf
    acpi
    xcompmgr
    libxft-dev
)

for apt_program in "${apt_programs[@]}"; do
    sudo apt install "$apt_program"
done

# remember to stow everything except install.sh and system_scripts regularly.
# do sudo stow --target=/ system_scripts for system_scripts folder to stow in /usr/bin
