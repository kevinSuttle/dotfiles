# Don't try to clone the dotfile repo again if it already exists
if [[ -d ~/Code/dotfiles ]]
then
  export DOTFILES="$HOME/Code/dotfiles"
	ln -sf $DOTFILES/bashrc $HOME/.bashrc
	ln -sf $DOTFILES/gitconfig $HOME/.gitconfig
	ln -sf $DOTFILES/gitignore $HOME/.gitignore
	ln -sf $DOTFILES/hushlogin $HOME/.hushlogin
	ln -sf $DOTFILES/zshrc $HOME/.zshrc
else
	git clone https://github.com/kevinSuttle/dotfiles.git ~/Code/dotfiles
  git clone https://github.com/sindresorhus/pure ~/Code/pure-zsh/
fi

exec $SHELL -l
