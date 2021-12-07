#!/bin/bash/

echo Alias name:
read alias

echo Alias command:
read command

echo alias $alias=\'$command\' >> ~/dotfiles/bash_aliases
cp ~/dotfiles/bash_aliases ~/.bash_aliases
source ~/.bash_aliases
