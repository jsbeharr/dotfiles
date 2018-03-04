#!/bin/bash

# updates files in this repo with those in the home directory

# checks whether the files are different in the home repo
let difference=0
FILES=$(ls ~/dotfiles | egrep -v "brew_installation.sh|collect.sh|README.md|iterm2_profile")

for files in $FILES
do
  if ! diff ~/.$files ~/dotfiles/$files > /dev/null ; then
    echo "${files} is different"
    cat ~/.$files > $files 
    let difference++
  fi
done

# copys files from home to dotfiles if their are changes
if (( $difference == 0 )); then
  echo "No changes in dot files"
fi
