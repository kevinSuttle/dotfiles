# Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# If not running interactively, do not do anything
#[[ $- != *i* ]] && return
#[[ $TERM != screen* ]] && exec tmux
