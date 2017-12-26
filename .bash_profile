source ~/env
source ~/aliases
source ~/colors
source ~/extras
source ~/prompt

source ~/bash/colors.sh
source ~/bash/extras.sh
source ~/bash/prompt.sh

shopt -s cdspell
shopt -s checkwinsize
shopt -s histappend
shopt -s nocaseglob

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm