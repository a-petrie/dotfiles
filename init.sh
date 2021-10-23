#!/bin/bash/

for file in bashrc bash_aliases vimrc tmux.conf
do
  cp $file ~/.$file
done

cp starship.toml ~/.config/

source bashrc
source bash_aliases
