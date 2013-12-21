export DOTFILES="$HOME/Code/dotfiles"

for file in $DOTFILES/{aliases,colors,exports,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file

export PS1="\w \$(parse_git_branch) \n$ "
