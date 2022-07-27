#|-----------------------------------------------------------------|
#|         _ _             _             _ _                       |
#|    __ _| | | __ _ _ __ ( )___    __ _| (_) __ _ ___  ___  ___   |
#|   / _` | | |/ _` | '_ \|// __|  / _` | | |/ _` / __|/ _ \/ __|  |
#|  | (_| | | | (_| | | | | \__ \ | (_| | | | (_| \__ \  __/\__ \  |
#|   \__,_|_|_|\__,_|_| |_| |___/  \__,_|_|_|\__,_|___/\___||___/  |
#|                                                                 |
#|-----------------------------------------------------------------|

# shortcuts
alias dtp='cd ~/desktop'
alias dwn='cd ~/Downloads'
alias dtf='cd ~/dotfiles'
alias mus='cd ~/music'
alias samps='cd ~/music/samples'
alias beats='cd ~/music/freestyle-beats && git pull origin main && ranger ~/music/freestyle-beats'
alias bkg='cd /usr/share/backgrounds/'
alias lv2='cd /usr/lib/lv2/'

# applications
alias chrome='google-chrome'
alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias zot='cd ~/programs/Zotero_linux-x86_64/ && ./zotero'
alias wpaper='nitrogen /usr/share/backgrounds/'
alias python='python3'

# dotfiles 
alias dtfr='cd ~/dotfiles && git pull && bash init.sh'
alias vrc='vim ~/dotfiles/vimrc'
alias brc='vim ~/dotfiles/bashrc'
alias aliases='vim ~/dotfiles/bash_aliases'
alias na='bash ~/dotfiles/newalias.sh && cp ~/dotfiles/bash_aliases ~/.bash_aliases'
alias sa='source ~/.bashrc ~/.bash_aliases ~/.bash_profile'

# list and delete duplicate files
alias lsd='ls | grep ".*([0-9]*)\..*"'
alias rmd='ls | grep ".*([0-9]*)\..*" | xargs -d"\n" rm'

# dissertation directory aliases
alias diss='cd ~/l5_dissertation && cat todos.md'
alias gen='cd ~/l5_dissertation/src/Application'
alias sim='cd ~/l5_dissertation/src/AudioAnalysis'
alias dat='cd ~/l5_dissertation/data'
alias rgn='python3 /home/allan/l5_dissertation/src/Application/mvp.py code_example/example.scd'
alias sse='cd ~/uni/uni/sse/'
alias trn='cd ~/l5_dissertation/src/Training/'
alias exp='cd ~/l5_dissertation/src/AudioAnalysis && python3 runExperiment.py'

# uni directory shortcuts
alias uni='cd ~/uni/uni'
alias sse='cd ~/uni/uni/sse'
alias suge='cd ~/uni/uni/suge'
alias asep='cd ~/uni/asep/asep-coursework-2021'
alias wad='cd ~/tutoring/wad2/rango/tango_with_django_project'
alias runserver='python3 /home/allan/tutoring/wad2/rango/tango_with_django_project/manage.py runserver'

# launch vimwiki
alias vw='vim ~/vimwiki/index.wiki'
alias td="vim /home/allan/vimwiki/todo.wiki"

#LaTeX aliases
alias lxc='rm *.log *.aux'

alias nt="cp ~/code/templates/c/test.c . && vim test.c"
alias t="gcc -o test.o test.c && ./test.o && rm test.o"
alias plugins='lv2file --list'
alias rmk='make && sudo make install'

alias img='cp ~/code/imgutils/utils.py . && python3'
alias di='cd ~/l5_dissertation/dissertation/latex'
alias plt='cd ~/l5_dissertation/src/plots/'
alias mark='cd ~/tutoring/wad2_marking/'
alias migrate='python3 manage.py makemigrations && python3 manage.py migrate'
alias code='cd ~/code'
alias rt='python3 manage.py test'
alias tc='workon two_comp && vim code/two_compliment_refactor/TwosCompliment/tests.py'
alias music='cd ~/music/'
alias ergodox='cd ~/programs/ergodox/ && ./wally && cd -'
