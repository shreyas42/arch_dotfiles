# Lines configured by zsh-newuser-install
HISTFILE="$ZDOTDIR/.histfile"
HISTSIZE=1000
SAVEHIST=1000
bindkey "^[[3~" delete-char
bindkey "^[[1~" beginning-of-line
bindkey "^[[4~" end-of-line
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$ZDOTDIR/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

if uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi
