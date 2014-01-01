# Don't try to clone the dotfile repo again if it already exists
if [[ -d $HOME/Code/dotfiles ]]
then
	ln -sf $HOME/Code/dotfiles/gitconfig $HOME/.gitconfig
	ln -sf $HOME/Code/dotfiles/gitignore $HOME/.gitignore
	ln -sf $HOME/Code/dotfiles/hushlogin $HOME/.hushlogin
  ln -sf $HOME/Code/dotfiles/zlogin $HOME/.zlogin
  ln -sf $HOME/Code/dotfiles/zshenv $HOME/.zshenv
	ln -sf $HOME/Code/dotfiles/zshrc $HOME/.zshrc
  echo "Dotfiles have been symlinked to $HOME."
else
  echo "Cloning your dotfiles from GitHub..."
	git clone https://github.com/kevinSuttle/dotfiles.git $HOME/Code/dotfiles
  echo "Cloning Pure Zshell config from GitHub..."
  git clone https://github.com/sindresorhus/pure $HOME/Code/pure-zsh/
  echo "Linking Pure Zshell prompt to Zsh functions..."
  ln -s "$HOME/Code/pure-zsh/pure.zsh" /usr/local/share/zsh/site-functions/prompt_pure_setup
  echo "Dotfiles install complete."
fi

# Don't try to clone the vundle repo again if it already exists
if [[ -d $HOME/.vim ]]
then
  echo "You've already set up your vim config."
else
  mkdir -p $HOME/.vim/bundle/ && cd $_
  git init
  git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
  ln -sf $DOTFILES/vimrc $HOME/.vimrc
  ln -sf $DOTFILES/vimrc.bundles $HOME/.vimrc.bundles
  ln -sf $DOTFILES/gvimrc $HOME/.gvimrc

  vim +BundleInstall +qall
  cd -
  echo "Vim config complete."
fi

exec $SHELL -l
