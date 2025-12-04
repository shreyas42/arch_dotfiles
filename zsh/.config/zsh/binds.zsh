bindkey "^[[3~" delete-char
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word

# Setup fzf binds
source /usr/share/fzf/key-bindings.zsh
source /usr/share/fzf/completion.zsh
