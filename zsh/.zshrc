# Defaults
export PATH="/usr/local/bin:$PATH"
export NODE_PATH="/usr/local/bin/node"

# shortcut to this dotfiles path is $ZSH
export ZSH=$HOME/Github/dotfiles
export DOTFILES=$HOME/Github/dotfiles

# source every .zsh file in this repo
for config_file ($ZSH/**/*.zsh) source $config_file

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

