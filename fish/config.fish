if not status --is-interactive
  exit 0
end

source "$HOME/.config/fish/abbreviations.fish"

# Fishhh
set -x fish_greeting ""

# Editor prefs
set -x EDITOR vim

# Don’t clear the screen after quitting a manual page
set -x MANPAGER "less -X"

set -x GIT_TERMINAL_PROMPT 1
set -x GOPATH $HOME/go
set -x DOTFILES $HOME/Code/dotfiles
set -x DOCKER_HOST tcp://(boot2docker ip):2376
set -x DOCKER_CERT_PATH /Users/(whoami)/.boot2docker/certs/boot2docker-vm
set -x DOCKER_TLS_VERIFY 1

# Path
if not set -q -U fish_user_paths
  set -U fish_user_paths "/usr/bin" "/usr/local/bin" "$GOPATH/bin"
end
