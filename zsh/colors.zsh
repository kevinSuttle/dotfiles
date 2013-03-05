case "$TERM" in
	xterm*) TERM=xterm-256color
esac

autoload -U colors && colors

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

[ -f /opt/boxen/homebrew/etc/grc.bashrc ] &&  source /opt/boxen/homebrew/etc/grc.bashrc