# env variables
#export EDITOR="bspwm_swallow emacsclient -c -n"
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
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export GOPATH="/usr/lib/go"
export FZF_DEFAULT_COMMAND="find -L"
export FZF_CTRL_T_COMMAND="find -L"
export FZF_CTRL_T_OPTS="+m"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=3
export _JAVA_AWT_WM_NONREPARENTING=1
# android studio
#export ANDROID_AVD_HOME="$HOME/.AndroidStudio4.0/avd"
export ANDROID_SDK_ROOT="$HOmE/.android/sdk"
export ANDROID_HOME=$ANDROID_SDK_ROOT
#export SPACEMACSDOTDIR="$HOME/.config/spacemacs"

#export PKG_CONFIG_PATH="/snap/gnome-3-34-1804/36/usr/lib/x86_64-linux-gnu/pkgconfig/"

# default applications
export LOCKER="i3lock"
export BROWSER="chromium"
export TERMINAL="alacritty"
export BAR="bspwm_lemonbar"
#export FILE_MANAGER="launch_ranger"

# monitor
[ -z "$MONITOR_PRIMARY" ] && export MONITOR_PRIMARY="$(xrandr | grep primary | awk '{print $1}')"
export MONITOR_SECONDARY="HDMI-1"

# env variables for custom scripts, only assign if not already defined (typically just on startup)
#[ -z $MONITOR_BRIGHTNESS ] && export MONITOR_BRIGHTNESS="10"
#[ -z $RANGER_NODE_ID ] && export RANGER_NODE_ID=""

# colored man pages in less
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# flutter and emulator path exports
export PATH=$PATH:$HOME/programs/flutter/bin
export PATH=$PATH:$HOME/.android/sdk/emulator
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:$HOME/.emacs.d/bin

# source system specific config
source export_system_env_vars 
