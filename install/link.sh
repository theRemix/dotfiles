#!/bin/bash

DOTFILES=$HOME/.dotfiles

echo "Creating symlinks"

for file in **/*.symlink ; do

  target="$HOME/.$( basename $file ".symlink" )"
  if [ -e "$target" ]
  then
    mv $target "$target".backup
  fi
  echo "creating symlink for $file"
  ln -s $DOTFILES/$file $target
done
