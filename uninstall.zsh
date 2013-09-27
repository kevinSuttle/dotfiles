#!/bin/zsh

rm $HOME/.bash*
rm $HOME/.curlrc
rm $HOME/.rbenv/default-gems
rm $HOME/.gemrc
rm $HOME/.git*
rm $HOME/.gvim*
rm $HOME/.hg*
rm $HOME/.hushlogin
rm $HOME/.inputrc
rm $HOME/.netrc
rm $HOME/.screenrc
rm $HOME/.tmux*
rm $HOME/.z*
rm -d $HOME/.vim*

exec $SHELL
