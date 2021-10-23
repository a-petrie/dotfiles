#!/bin/bash/

echo Alias name:
read alias
echo $aliasName

echo Alias command:
read command

echo alias $alias=\'$command\' >> ~/dotfiles/.bash_aliases
source .bash_aliases
