#!/bin/bash

# updates files in this repo with those in the home directory

# checks whether the files are different in the home repo
ISDIFF=0
FILES=$(ls ~/dotfiles | grep -v "collect.sh" | grep -v "README.md" | grep -v "iterm2_profile")

for files in $FILES
do
  if ! diff ~/.$files ~/dotfiles/$files > /dev/null ; then
    echo "${files} is different"
    ISDIFF=1
  fi
done

# copys files from home to dotfiles if their are changes
if [ "$ISDIFF" -eq "1" ]; then
 for files in $FILES
 do
  cp ~/.$files ~/dotfiles
  mv ~/dotfiles/.$files ~/dotfiles/$files
 done 
else
  echo "No changes in files"
fi
