# env variables
#export EDITOR="bspwm_swallow emacsclient -c -n"
#export VISUAL="bspwm_swallow emacsclient -c -n"
notify-send "zshenv sourced"
export EDITOR="nvim"
export VISUAL="nvim"
#export MANPAGER="nvim +Man!"
#export MANWIDTH=999
export READER="zathura"
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$HOME/.config/zsh/"
#export GIT_CONFIG="$HOME/.config/git/config"
#export GIT_DIR="$HOME/.config/git/"
export HISTFILE="$HOME/.config/zsh/.zsh_history"
export LESSHISTFILE="/dev/null"
export JAVA_HOME="/usr/lib/jvm/jdk-11.0.8"
export GOPATH="/usr/lib/go"
#export QT_AUTO_SCREEN_SCALE_FACTOR=0
#export QT_SCREEN_SCALE_FACTORS="2;2"
#export QT_SCALE_FACTOR=1.5
export FZF_DEFAULT_OPTS='--layout=reverse --height 40% --bind tab:down --cycle --bind btab:up --cycle --bind ctrl-space:toggle+down'
#export FZF_DEFAULT_COMMAND="find -L"
#export FZF_CTRL_T_COMMAND="find -L"
export _JAVA_AWT_WM_NONREPARENTING=1
#export WINIT_X11_SCALE_FACTOR=1
# android studio
#export ANDROID_AVD_HOME="$HOME/.AndroidStudio4.0/avd"
export ANDROID_SDK_ROOT="$HOME/.android/sdk"
export ANDROID_HOME=$ANDROID_SDK_ROOT
#export SPACEMACSDOTDIR="$HOME/.config/spacemacs"

# default applications
export WALLPAPER="$HOME/Pictures/wallpapers/bee_on_flower.jpg"
export LOCKER="i3lock"
export BROWSER="google-chrome"
export TERMINAL="st"
export BAR="bspwm_lemonbar"
export FONT="Ubuntu Mono"
#export FILE_MANAGER="launch_ranger"

# flutter and emulator path exports
export PATH=$PATH:$HOME/programs/flutter/bin
export PATH=$PATH:$HOME/.android/sdk/emulator
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.emacs.d/bin



source ~/.system_envvars
