# env variables
export EDITOR="bspwm_swallow emacs"
export VISUAL="bspwm_swallow emacs"
#export MANPAGER="nvim +Man!"
#export MANWIDTH=999
export READER="zathura"
export ZDOTDIR="$HOME/.config/zsh/"
export GIT_CONFIG="$HOME/.config/git/config"
export HISTFILE="$HOME/.config/zsh/.zsh_history"
export LESSHISTFILE="/dev/null"
export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64"
export FZF_DEFAULT_COMMAND="find -L"
export FZF_CTRL_T_COMMAND="find -L"
export FZF_CTRL_T_OPTS="+m"
export PKG_CONFIG_PATH="/snap/gnome-3-34-1804/36/usr/lib/x86_64-linux-gnu/pkgconfig/"

# default applications
export LOCKER="slock"
export BROWSER="chromium"
export TERMINAL="st"
export BAR="bspwm_lemonbar"
export FILE_MANAGER="launch_ranger"

# monitor
export MONITOR_PRIMARY="eDP-1"
export MONITOR_SECONDARY="HDMI-1"

# env variables for custom scripts, only assign if not already defined (typically just on startup)
#[ -z $MONITOR_BRIGHTNESS ] && export MONITOR_BRIGHTNESS="10"
#[ -z $RANGER_NODE_ID ] && export RANGER_NODE_ID=""


