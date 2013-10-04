mkdir -p ~/.vim/bundle/vundle && cd$_
git init
mkdir -p $HOME/.vim/bundle/
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
ln -sf $DOTFILES/vimrc $HOME/.vimrc
ln -sf $DOTFILES/vimrc.bundles $HOME/.vimrc.bundles
ln -sf $DOTFILES/gvimrc $HOME/.gvimrc

vim +BundleInstall +qall
