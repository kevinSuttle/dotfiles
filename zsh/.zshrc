# source every .zsh file in this repo
for config_file ($DOTFILES/**/*.zsh) source $config_file

autoload -U compinit
compinit

# Editor prefs
set -o vi
export EDITOR=vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Misc
# Don't clear the screen after quitting a man page session
export MANPAGER="less -X"

# Git cloned rbenv
eval "$(rbenv init -)"
