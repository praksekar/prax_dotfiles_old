# env variables
export EDITOR="nvim"
export VISUAL="nvim"
#export MANPAGER='nvim +Man!'
#export MANWIDTH=999
export READER="zathura"
export ZDOTDIR="$HOME/.config/zsh/"
export GIT_CONFIG="$HOME/.config/git/config"
export HISTFILE="$HOME/.config/zsh/.zsh_history"
export LESSHISTFILE="/dev/null"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export SPACEMACSDIR="$HOME/.config/spacemacs"
export FZF_DEFAULT_COMMAND='find -L'

# default applications
export LOCKER="slock"
export BROWSER="chromium"
export TERMINAL="tabbed_st"
export BAR="bspwm_lemonbar"
export FILE_MANAGER="launch_ranger"

# monitor
export MONITOR_PRIMARY="eDP-1"
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

