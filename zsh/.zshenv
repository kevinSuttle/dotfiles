# Environment Variables
export PATH="/usr/local/bin:$PATH"

## Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

## For RBEnv
export PATH="/opt/boxen/rbenv/bin/rbenv:$PATH"

## For Node CLAs
export NODE_PATH="/opt/boxen/bin/node"

## NPM
export PATH="/opt/boxen/bin/npm:$PATH"

# shortcut to this dotfiles repo
export DOTFILES=$HOME/Code/dotfiles

# Boxen
[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh
