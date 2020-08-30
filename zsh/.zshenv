# env variables
#vaexport EDITOR="bspwm_swallow emacsclient -c -n"
#export VISUAL="bspwm_swallow emacsclient -c -n"
export EDITOR="nvim"
export VISUAL="nvim"
#export MANPAGER="nvim +Man!"
#export MANWIDTH=999
export READER="zathura"
export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$HOME/.config/zsh/"
export GIT_CONFIG="$HOME/.config/git/config"
export HISTFILE="$HOME/.config/zsh/.zsh_history"
export LESSHISTFILE="/dev/null"
export JAVA_HOME="/usr/lib/jvm/jdk-11.0.8"
export GOPATH="/usr/lib/go"
export FZF_DEFAULT_OPTS='--bind tab:down --cycle --bind btab:up --cycle --bind ctrl-space:toggle+down'
export FZF_DEFAULT_COMMAND="find -L"
export FZF_CTRL_T_COMMAND="find -L"
export _JAVA_AWT_WM_NONREPARENTING=1
# android studio
#export ANDROID_AVD_HOME="$HOME/.AndroidStudio4.0/avd"
export ANDROID_SDK_ROOT="$HOmE/.android/sdk"
export ANDROID_HOME=$ANDROID_SDK_ROOT
#export SPACEMACSDOTDIR="$HOME/.config/spacemacs"

# default applications
export LOCKER="slock"
export BROWSER="chromium"
export TERMINAL="alacritty"
export BAR="bspwm_lemonbar"
export FONT="Ubuntu Mono"
#export FILE_MANAGER="launch_ranger"

# monitor
[ -z "$MONITOR_PRIMARY" ] && export MONITOR_PRIMARY="$(xrandr | grep primary | awk '{print $1}')"
export MONITOR_SECONDARY="HDMI-1"

# env variables for custom scripts, only assign if not already defined (typically just on startup)
#[ -z $MONITOR_BRIGHTNESS ] && export MONITOR_BRIGHTNESS="10"
#[ -z $RANGER_NODE_ID ] && export RANGER_NODE_ID=""

# flutter and emulator path exports
export PATH=$PATH:$HOME/programs/flutter/bin
export PATH=$PATH:$HOME/.android/sdk/emulator
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.emacs.d/bin

# source system specific config
source ~/.system_envvars
