#!/bin/sh

apt_programs=(
    git
    stow
    bspwm
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
}

for apt_program in "${apt_programs[@]}"; do
    sudo apt install "$apt_program"
done

stow * #fix this so it ignores the scripts file and others
