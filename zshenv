# Editor prefs
export EDITOR=vim
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

# Highlight section titles in manual pages
export LESS_TERMCAP_md="$ORANGE"

# Don’t clear the screen after quitting a manual page
export MANPAGER="less -X"

# Homebrew
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/bin:$PATH"

# Homebrew cask
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Go runtime
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export GOPATH=$HOME/go
export GOROOT='/opt/go'
export GOOS=darwin
export GOARCH=amd64
export PATH=$PATH:$GOPATH/bin

# Path to my dotfiles repo
export DOTFILES=$HOME/Code/dotfiles

for config_file ($DOTFILES/{aliases,colors,functions}) source $config_file

fpath=(/usr/local/share/zsh-completions "$HOME/.zfunctions" $fpath )
source ~/Code/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
