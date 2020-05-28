#!/bin/bash

apt_programs=(
    neovim
    git
    stow
    bspwm
    sxhkd
    dunst
    dmenu
    lemonbar
    ranger
    #st
    sxiv
    #tabbed
    zathura
    zsh
    slock
    xrandr
    chromium-browser
    #curl
    flameshot
    tree
    neofetch
    #python3-dev
    chromium
    #fzf
    acpi
    xcompmgr
)

for apt_program in "${apt_programs[@]}"; do
    sudo apt install "$apt_program"
done

