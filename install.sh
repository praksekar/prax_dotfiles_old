#!/bin/bash

apt_programs=(
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

