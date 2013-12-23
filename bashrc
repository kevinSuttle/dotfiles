for file in $HOME/Code/dotfiles/{aliases,colors,exports,functions}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

export PS1="\[$PURPLE\]\w\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" \")\[$GRAY\]\$(parse_git_branch)\[$PURPLE\]\n\$ \[$RESET\]"
