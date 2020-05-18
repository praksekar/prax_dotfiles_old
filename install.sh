#!/bin/sh

apt_programs=(
    git
    stow
    bspwm
    sxhkd
    dunst
    nvim
    polybar
    ranger
    #st
    sxiv
    #tabbed
    zathura
    zsh
    i3lock
    xrandr
    chromium
    curl
    flameshot
    tree
    code
}

for apt_program in "${apt_programs[@]}"; do
    sudo apt install "$apt_program"
done

stow * #fix this so it ignores the scripts file and others
