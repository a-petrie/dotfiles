#!/bin/bash/

for file in bashrc bash_aliases bash_profile vimrc tmux.conf gitconfig
do
  cp $file ~/.$file
done

cp starship.toml ~/.config/

source ~/.bashrc
source ~/.bash_aliases
source ~/.bash_profile
