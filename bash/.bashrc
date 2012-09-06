# Colors
case "$TERM" in
	xterm*) TERM=xterm-256color
esac

source "`brew --prefix`/etc/grc.bashrc"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# Editor prefs
set -o vi
export EDITOR=vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Aliases
# UNIX aliases
alias ls='ls -laHF'
alias cddf='cd ~/Github/dotfiles'

# Git aliases
alias gs='git status'
alias gp='git push'
alias gpom='git push origin master'
alias gphm='git push heroku master'
alias ho='heroku open'
alias gpr='git pull --rebase'
alias glo='git log --oneline'
alias gd='git diff'
alias gc='git commit'
alias gca='git commit --amend'
alias gco='git checkout'
alias gcom='git checkout master'
alias gb='git branch'

	
