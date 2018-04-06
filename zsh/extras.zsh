test -e ${HOME}/.iterm2_shell_integration.zsh && source ${HOME}/.iterm2_shell_integration.zsh

# brew info zsh-syntax-highlighting
test -e /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh && source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# OPAM configuration
. /Users/kevinsuttle/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
