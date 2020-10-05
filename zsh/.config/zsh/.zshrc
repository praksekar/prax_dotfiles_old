# Load aliases and shortcuts if existent.
[ -f ~/.config/zsh/.zsh_aliases ] && source ~/.config/zsh/.zsh_aliases

#Enable colors and change prompt:
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Disable ctrl-s to freeze terminal.
stty stop undef		

# colored man pages in less
export LESS=-R
export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

# enable directory coloring
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some nice cd modifications
setopt autocd		# Automatically cd into typed directory.
function chpwd() { # automatically ls after cd'ing into directory.
    emulate -L zsh
    ls 
}

# zsh native fuzzy completion
zstyle ':completion:*' matcher-list '' \
  'm:{a-z\-}={A-Z\_}' \
  'r:[^[:alpha:]]||[[:alpha:]]=** r:|=* m:{a-z\-}={A-Z\_}' \
  'r:|?=** m:{a-z\-}={A-Z\_}'

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
# shopt -s checkwinsize

# History in cache directory:
HISTSIZE=1000000
HISTFILESIZE=1000000
SAVEHIST=1000000
HISTFILE=~/.config/zsh/.zsh_history


# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
#bindkey -v
export KEYTIMEOUT=1

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}

zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.


# keybindings
bindkey -s '^a' 'bc -l\n'
#bindkey -s '^t' 'cd "$(dirname "$(fzf)")"\n'
#bindkey -s '^r' 'cat $HISTFILE | fzf \n'
bindkey '^[[P' delete-char

#zle -N fzf_history_search_widget
#fzf_history_search_widget() fzf_history_search
#bindkey '^R' fzf_history_search_widget

# Edit line in desired text edt=itor with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# run bspwm_swallow on current text
window_swallow_command () {
    echo
    eval bspwm_swallow $BUFFER
    echo $BUFFER >> $HISTFILE
    BUFFER=''
    zle reset-prompt
}

zle -N window_swallow_command
bindkey '^ ' window_swallow_command

# source fzf 
#[ -f ~/.src/fzf/.fzf.zsh ] && source ~/.src/fzf/.fzf.zsh 
source key-bindings.zsh

# Load syntax highlighting; should be last.
[ -f ~/.src/zsh-plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh ] && source ~/.src/zsh-plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 

# load autocomplete
# source ~/.config/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
