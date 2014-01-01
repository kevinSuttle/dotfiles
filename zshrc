# add some readline keys back
bindkey "^A" beginning-of-line
bindkey "^E" end-of-line

# ignore duplicate history entries
setopt histignoredups

# automatically pushd
setopt auto_pushd

# automatically enter directories without cd
setopt auto_cd

# awesome cd movements from zshkit
setopt AUTOCD
setopt AUTOPUSHD PUSHDMINUS PUSHDSILENT PUSHDTOHOME
setopt cdablevars

# Try to correct command line spelling
setopt CORRECT CORRECT_ALL

# Enable extended globbing
setopt EXTENDED_GLOB

# Originally taken from @holman: https://github.com/holman/dotfiles/blob/master/zsh/config.zsh
HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

setopt NO_BG_NICE # don't nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS # allow functions to have local options
setopt LOCAL_TRAPS # allow functions to have local traps
setopt HIST_VERIFY
setopt SHARE_HISTORY # share history between sessions ???
setopt EXTENDED_HISTORY # add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

zle -N newtab

# expand functions in the prompt
setopt prompt_subst

# don't expand aliases _before_ completion has finished
#   like: git comm-[tab]
setopt complete_aliases

# Completions
autoload -U promptinit
promptinit

# Prompt Functions
precmd() {
    chpwd
    prompt pure
}

chpwd() {
    # Set Terminal title to current directory dynamically
    print -Pn "\e]0; %~\a"
}
