# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config//.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE="$ZDOTDIR/.histfile"
HISTSIZE=1000
SAVEHIST=1000

# Source options
source ~/.config/zsh/options.zsh

# Source keybinds
source ~/.config/zsh/binds.zsh

# Source aliases
source ~/.config/zsh/aliases.zsh

# Source paths and exports
source ~/.config/zsh/exports.zsh

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "$ZDOTDIR/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

# Plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Powerline 10K
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

if uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi

# To customize prompt, run `p10k configure` or edit ~/.config//.p10k.zsh.
[[ ! -f ~/.config//.p10k.zsh ]] || source ~/.config//.p10k.zsh
