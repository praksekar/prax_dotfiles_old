# Setup fzf
# ---------
if [[ ! "$PATH" == */home/prakash/.config/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/prakash/.config/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/prakash/.config/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/prakash/.config/fzf/shell/key-bindings.zsh"
