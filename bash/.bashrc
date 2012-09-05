# Colors
case "$TERM" in
	xterm*) TERM=xterm-256color
esac

source ~/.rvm/scripts/rvm

source "`brew --prefix`/etc/grc.bashrc"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Editor prefs
set -o vi
export EDITOR=vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
