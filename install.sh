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
    sxiv
    zathura
    zsh
    slock
    chromium-browser
    flameshot
    tree
    neofetch
    chromium
    #fzf
    acpi
    xcompmgr
    libxft-dev
)

for apt_program in "${apt_programs[@]}"; do
    sudo apt install "$apt_program"
done

