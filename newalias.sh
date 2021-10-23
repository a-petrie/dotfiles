#!/bin/bash/

echo Alias name:
read alias

echo Alias command:
read command

echo alias $alias=\'$command\' >> ~/dotfiles/bash_aliases
cp ~/dotfiles/bashaliases ~/.bash_aliases
source ~/.bash_aliases
