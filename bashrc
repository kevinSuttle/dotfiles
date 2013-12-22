export DOTFILES="$HOME/Code/dotfiles"

for file in $DOTFILES/{aliases,colors,exports,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file

export PS1="\[\033[0;34m\]\w \[\033[0;37m\]$(parse_git_branch) \n\[\033[1;34m\]$ \[\033[0m\]"
