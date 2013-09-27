#!/bin/zsh
source .aliases

ln -s $PWD/.hushlogin $HOME/.hushlogin
ln -s $PWD/.inputrc $HOME/.inputrc
ln -s $PWD/.screenrc $HOME/.screenrc
ln -s $PWD/.bash_profile $HOME/.bashrc
ln -s $PWD/.bash_profile $HOME/.bash_profile
ln -s $PWD/.gitconfig $HOME/.gitconfig
ln -s $PWD/.gitignore $HOME/.gitignore
ln -s $PWD/.tmux.conf $HOME/.tmux.conf
ln -s $PWD/.gemrc $HOME/.gemrc
ln -s $PWD/default-gems $HOME/.rbenv/default-gems
ln -s $PWD/.vimrc $HOME/.vimrc
ln -s $PWD/.vimrc.bundles $HOME/.vimrc.bundles
ln -s $PWD/.gvimrc $HOME/.gvimrc
ln -s $PWD/.zshrc $HOME/.zshrc

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim -u ~/.vimrc.bundles +BundleInstall +qa

reload
