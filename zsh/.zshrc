# Defaults
export PATH="/usr/local/bin:$PATH"

# shortcut to this dotfiles path is $ZSH
export ZSH=$HOME/Github/dotfiles
export DOTFILES=$HOME/Github/dotfiles

# source every .zsh file in this repo
for config_file ($ZSH/**/*.zsh) source $config_file

autoload -U compinit
compinit

autoload -U promptinit
promptinit

# Colors
case "$TERM" in
	xterm*) TERM=xterm-256color
esac

autoload -U colors && colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

source "`brew --prefix`/etc/grc.bashrc"

# Editor prefs
set -o vi
export EDITOR=vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8	

# FUNCTIONS
precmd() {
	chpwd
}

chpwd() {
	 print -Pn "\e]0; %~\a"
	# echo $PWD
}

simple_prompt_on() {
	PROMPT="%{$fg_bold[black]%}☰ $reset_color "
}

full_prompt_on() {
	PROMPT="%{$fg_bold[black]%}☰ $reset_color "
}
prompt_off() {
	PS1="\$ "
}

case $TERM in
    xterm*)
	    full_prompt_on 
        ;;
    *)
	    simple_prompt_on
        ;;
esac

# For Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi