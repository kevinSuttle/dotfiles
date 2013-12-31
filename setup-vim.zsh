if [[ -d $HOME/.vim ]]
then
	echo "You've already set up vim."
else
	mkdir -p $HOME/.vim/bundle/ && cd $_
	git init
	git clone https://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle
	ln -sf $DOTFILES/vimrc $HOME/.vimrc
	ln -sf $DOTFILES/vimrc.bundles $HOME/.vimrc.bundles
	ln -sf $DOTFILES/gvimrc $HOME/.gvimrc

	vim +BundleInstall +qall
	cd -
fi
