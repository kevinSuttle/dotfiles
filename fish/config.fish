if not status --is-interactive
  exit 0
end

source "$HOME/.config/fish/abbreviations.fish"

# Fishhh
set -x FISH_GREETING ""

# Editor prefs
set -x EDITOR vim

# Don’t clear the screen after quitting a manual page
set -x MANPAGER "less -X"

set -x GIT_TERMINAL_PROMPT 1
set -x GOPATH $HOME/go
set -x DOTFILES $HOME/Code/dotfiles

# Path
if not set -q -U fish_user_paths
  set -U fish_user_paths "/usr/bin" "/usr/local/bin" "$GOPATH/bin"
end
