# My Dotfiles

This is a collection of all my dotfiles deployed with GNU stow. Programs that are configured include bspwm, nvim, xkb, and vscode. After installation, you will have a fully featured BSPWM tiling window manager environment complete with hotkey configurations, status bar, convenient application default settings, dynamically created workspaces, and much more.

# Installation

1) If installing on an existing machine, it is recommended that you create a new user as this will overwrite several of your default configuration settings. 
2) Install git on your machine. Then, clone this repository to your ~/.config folder. 
3) Make sure you configure all the system specific environment variables unique to your machine inside the ~/.system_envvars file. 
4) Run install.sh which will install dependencies and unstow all configuration files to their respective folders. The script should run and prompt you for various info. 
5) Once done, make sure you reboot your machine.
