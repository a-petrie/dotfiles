#|-----------------------------------------------------------------|
#|         _ _             _             _ _                       |
#|    __ _| | | __ _ _ __ ( )___    __ _| (_) __ _ ___  ___  ___   |
#|   / _` | | |/ _` | '_ \|// __|  / _` | | |/ _` / __|/ _ \/ __|  |
#|  | (_| | | | (_| | | | | \__ \ | (_| | | | (_| \__ \  __/\__ \  |
#|   \__,_|_|_|\__,_|_| |_| |___/  \__,_|_|_|\__,_|___/\___||___/  |
#|                                                                 |
#|-----------------------------------------------------------------|

BASHRC=~/.bashrc
BASH_ALIASES=~/.bash_aliases
VIMRC=~/.config/nvim/init.vim

alias accounts='cd "$ACCOUNTS_DRIVE"'
alias aliases='vim $BASH_ALIASES'
alias asep='cd ~/uni/asep/asep-coursework-2021'
alias beats='cd ~/music/freestyle-beats && git pull origin main && ranger ~/music/freestyle-beats'
alias bkg='cd /usr/share/backgrounds/'
alias brc='vim $BASHRC'
alias chrome='google-chrome'
alias cl='clear'
alias clc='clear'
alias code='cd ~/code'
alias dtf='cd ~/dotfiles'
alias dtfr='cd ~/dotfiles && git pull && bash init.sh'
alias dtp='cd ~/desktop'
alias dwn='cd ~/Downloads'
alias ergodox='cd ~/programs/ergodox/ && ./wally && cd -'
alias img='cp ~/code/imgutils/utils.py . && python3'
alias inp='cd "$ACCOUNTS_DRIVE/In Progress"'
alias la='ls -a'
alias lsd='ls | grep ".*([0-9]*)\..*"'
alias lxc='rm *.log *.aux'
alias mus='cd ~/music'
alias music='cd ~/music/'
alias na='bash ~/dotfiles/newalias.sh && cp ~/dotfiles/bash_aliases ~/.bash_aliases'
alias newgitkey='ssh-keygen -t ed25519 -C "allantpetrie@gmail.com"'
alias nt="cp ~/code/templates/c/test.c . && vim test.c"
alias plugins='lv2file --list'
alias prettyjson='python3 -m json.tool'
alias python='python3'
alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias rgn='python3 /home/allan/l5_dissertation/src/Application/mvp.py code_example/example.scd'
alias rmd='ls | grep ".*([0-9]*)\..*" | xargs -d"\n" rm'
alias rmk='make && sudo make install'
alias rt='python3 manage.py test'
alias runserver='python3 /home/allan/tutoring/wad2/rango/tango_with_django_project/manage.py runserver'
alias sa='source $BASHRC'
alias sa='source ~/.bashrc $BASH_ALIASES && tmux source-file ~/.tmux.conf'
alias samps='cd ~/music/samples'
alias sl='ls'
alias swap='setxkbmap -option caps:swapescape'
alias t="gcc -o test.o test.c && ./test.o && rm test.o"
alias td="vim /home/allan/vimwiki/todo.wiki"
alias tls='tmux ls'
alias tmc='nvim ~/.tmux.conf'
alias uni='cd ~/uni/uni'
alias unswap='setxkbmap -option'
alias vrc='vim $VIMRC'
alias vw='nvim ~/vimwiki/index.md'
alias vw='vim ~/vimwiki/index.wiki'
alias wpaper='nitrogen /usr/share/backgrounds/'
alias cbc='cd $HOME/CBC && source $HOME/python_envs/cbc/bin/activate'
alias mntg='sudo mount -t drvfs G: /mnt/g'
