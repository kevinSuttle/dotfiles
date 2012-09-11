# Defaults
export PATH="/usr/local/bin:$PATH"

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

# For Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi