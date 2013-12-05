mkdir -p ~/.vim/bundle/ && cd $_
git init
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
ln -sf $DOTFILES/vimrc $HOME/.vimrc
ln -sf $DOTFILES/vimrc.bundles $HOME/.vimrc.bundles
ln -sf $DOTFILES/gvimrc $HOME/.gvimrc

vim +BundleInstall +qall
