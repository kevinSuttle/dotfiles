# Editor prefs
export EDITOR=vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Highlight section titles in manual pages
export LESS_TERMCAP_md="$ORANGE"

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Homebrew
export PATH="/usr/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# Sublime Text
export PATH="$HOME/bin:$PATH"

# Homebrew cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Path to my dotfiles repo
export DOTFILES="$HOME/Code/DOTFILES"

for config_file ($DOTFILES/{aliases,colors,functions}) source $config_file
