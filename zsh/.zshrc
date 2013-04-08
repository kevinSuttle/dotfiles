# source every .zsh file in this repo
for config_file ($DOTFILES/**/*.zsh) source $config_file

autoload -U compinit
compinit

# Editor prefs
export EDITOR=vim
bindkey -v
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

## vi style incremental search
bindkey '^R' history-incremental-search-backward
bindkey '^S' history-incremental-search-forward
bindkey '^P' history-search-backward
bindkey '^N' history-search-forward  

# Misc
# Don't clear the screen after quitting a man page session
export MANPAGER="less -X"

# Git cloned rbenv
eval "$(rbenv init -)"
