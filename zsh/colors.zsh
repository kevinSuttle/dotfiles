case "$TERM" in
	xterm*) TERM=xterm-256color
esac

autoload -U colors && colors

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

[ -f `brew --prefix`/etc/grc.bashrc ] &&  source "`brew --prefix`/etc/grc.bashrc"