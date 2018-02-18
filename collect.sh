#!/bin/bash

for files in $(ls ~/dotfiles | grep -v "collect.sh")
do
  cp ~/.$files ~/dotfiles
  mv ~/dotfiles/.$files ~/dotfiles/$files
done

