!/bin/bash

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
    fzf
    acpi
    xcompmgr
    libxft-dev
    code
)

for apt_program in "${apt_programs[@]}"; do
    sudo apt install "$apt_program"
done

# stow everything except install.sh and system_scripts regularly.
# do sudo stow --target=/ system_scripts for system_scripts folder to stow in /usr/bin
stow --ignore="bin" *
stow --target=/ system-scripts-bin

# install tabbed and st
cd ~/.config/tabbed
sudo make clean install
cd ~/.config/st
sudo make clean install

# install fzf, move .fzf.zsh to .config/zsh
cd ~/.config/fzf
./install.sh
mv ~/.fzf.zsh ~/.config/zsh/

chsh -s "$(which zsh)"

echo "----------------RESTART TO FINISH INSTALLATION-----------------------"
