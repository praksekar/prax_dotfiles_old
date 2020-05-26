#!/bin/sh

apt_programs=(
    neovim
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
    #curl
    flameshot
    tree
    neofetch
    python3-dev
    chromium
    fzf
}

for apt_program in "${apt_programs[@]}"; do
    sudo apt install "$apt_program"
done

stow * #fix this so it ignores the scripts file and others
