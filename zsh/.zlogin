# If not running interactively, do not do anything
#[[ $- != *i* ]] && return
#[[ $TERM != screen* ]] && exec tmux

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### For RBEnv
export PATH="$HOME/.rbenv/bin:$PATH"

# Git cloned rbenv
eval "$(rbenv init -)"