rm $HOME/.git*
rm $HOME/.hushlogin
rm $HOME/.z*

if [[ -d $HOME/.vim ]]
	then
	rm -rv $HOME/.vim/
	rm -v $HOME/.vimrc*
	rm -v $HOME/.gvimrc
	echo "Vim configuration has been removed."
else
	echo "No vim config files to remove."
fi

echo "Your dotfiles have been removed from $HOME."
