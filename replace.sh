#!/bin/bash

# This script replaces all dotfiles in Home with those
# located in this directory.
# Any old dotfile with be marked as old_<file> and placed
# in a new folder called old_dotfiles

FILES=$(ls ~/dotfiles | egrep -v "README.md|replace.sh")

mkdir ~/old_dotfiles

for file in $FILES
do
  if [ -f ~/.$file ];then
    mv ~/.$file ~/old_$file
    mv ~/old_$file ~/old_dotfiles
    echo "moved old .$file into old_dotfiles/"
  fi
  ln -s ~/dotfiles/$file ~/.$file
  echo "Symlink $file into home directory"
done
