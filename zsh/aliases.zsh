# List 
alias ls='ls -aF'

# List only directories
alias lsd='ls -l | grep "^d"'

# Easier navigation: Thanks @mathias, @gf3, et al.
alias ..='cd ..'
alias cddf='cd ~/Code/dotfiles'
alias cdc='cd ~/Code/'
alias cdd='cd ~/Downloads/'

# Shortcuts
alias v='vim'
alias mvim='mvim -vp'

# Get OS X Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
# Thanks once again @Mathias
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update npm -g; npm update -g; sudo gem update'

