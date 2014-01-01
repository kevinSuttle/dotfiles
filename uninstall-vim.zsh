if [[ -d $HOME/.vim ]]
then
  rm -d $HOME/.vim/
  rm $HOME/.vimrc*
  rm $HOME/.gvimrc
else
  echo "Vim configuration has already been removed."
fi
