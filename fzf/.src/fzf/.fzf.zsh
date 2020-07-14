# Setup fzf
# ---------
if [[ ! "$PATH" == */home/prakash/.src/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/prakash/.src/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/prakash/.src/fzf/shell/completion.zsh" #2> /dev/null

# Key bindings
# ------------
source "/home/prakash/.src/fzf/shell/key-bindings.zsh"
