BASHRC=~/.bashrc
BASH_ALIASES=~/.bash_aliases
VIMRC=~/.config/nvim/init.vim

# dotfile management
alias aliases='vim $BASH_ALIASES'
alias brc='nvim $BASHRC'
alias sa='source ~/.bashrc $BASH_ALIASES && tmux source-file ~/.tmux.conf'
alias tmc='nvim ~/.tmux.conf'
alias vrc='vim $VIMRC'

# common shortcuts
alias cl='clear'
alias clc='clear'
alias la='ls -a'
alias sl='ls'

# filesystem locations
alias dwn='cd ~/Downloads'

# applications
alias prettyjson='python3 -m json.tool'
alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias tls='tmux ls'

# keybindings
alias swap='setxkbmap -option caps:swapescape'
alias unswap='setxkbmap -option'

alias vw='nvim ~/vimwiki/index.md'

alias newgitkey='ssh-keygen -t ed25519 -C "allantpetrie@gmail.com"'
