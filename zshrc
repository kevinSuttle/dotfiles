source ~/.config/env
source $XDG_CONFIG_HOME/aliases
source $XDG_CONFIG_HOME/colors
source $XDG_CONFIG_HOME/extras
source $XDG_CONFIG_HOME/prompt

source $XDG_CONFIG_HOME/zsh/colors.zsh
source $XDG_CONFIG_HOME/zsh/extras.zsh
source $XDG_CONFIG_HOME/zsh/prompt.zsh

HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=100000
setopt appendhistory autocd extendedglob
unsetopt beep
bindkey -v

# zsh autocomplete
zstyle :compinstall filename '~/.zshrc'
zstyle ':completion:*' rehash true

autoload -Uz compinit
compinit
