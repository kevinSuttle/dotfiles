# use .localrc for stuff that you don't want in your public, versioned repo.
if [[ -a ~/.localrc ]]
then
  source ~/.localrc
fi

export DOTFILES="$HOME/Code/dotfiles"

for file in $DOTFILES/{aliases,colors,exports,functions}; do
    [ -r "$file" ] && source "$file"
done
unset file

function parse_git_branch {
   git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

export PS1="\w \$(parse_git_branch) \@\n$ "
