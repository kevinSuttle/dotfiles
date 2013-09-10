#!/bin/zsh
source .exports
source .aliases

ln -s $DOTFILES/.hushlogin ~/.hushlogin
ln -s $DOTFILES/.inputrc ~/.inputrc
ln -s $DOTFILES/.screenrc ~/.screenrc
ln -s $DOTFILES/.bash_profile ~/.bash_profile
ln -s $DOTFILES/.gitconfig ~/.gitconfig
ln -s $DOTFILES/.gitignore ~/.gitignore
ln -s $DOTFILES/.tmux.conf ~/.tmux.conf
ln -s $DOTFILES/.gemrc ~/.gemrc
ln -s $DOTFILES/default-gems ~/.rbenv/default-gems
ln -s $DOTFILES/.vimrc ~/.vimrc
ln -s $DOTFILES/.gvimrc ~/.gvimrc
ln -s $DOTFILES/.vimrc.bundles ~/.vimrc.bundles
ln -s $DOTFILES/.zshrc ~/.zshrc

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim -u ~/.vimrc.bundles +BundleInstall +qa

reload