#!/bin/bash

# This script replaces all dotfiles in Home with those
# located in this directory.
# Any old dotfile with be marked as old_<file> and placed
# in a new folder called old_dotfiles

FILES=$(ls ~/dotfiles | egrep -v "brew_installation.sh|collect.sh|README.md|iterm2_profile|replace.sh")

mkdir ~/old_dotfiles

for file in $FILES
do
  if [ -f ~/.$file ];then
    mv ~/.$file ~/old_$file
    mv ~/old_$file ~/old_dotfiles
    echo "moved old .$file into old_dotfiles/"
  fi
  cp $file ~/.$file
  echo "Copied $file into home"
done
