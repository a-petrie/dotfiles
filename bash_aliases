###########################################################################
############### My Aliases and Functions x ################################
###########################################################################

alias ssh1='ssh 2254840p@ssh1.dcs.gla.ac.uk'
alias sibu='ssh 2254840p@sibu.dcs.gla.ac.uk'

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
alias jupyter='~/.local/bin/jupyter-notebook'
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
alias na='bash ~/dotfiles/newalias.sh && cp ~/dotfiles/bash_aliases ~/.bash_aliases && source ~/.bash_aliases'
alias sa='source ~/.bashrc ~/.bash_aliases ~/.bash_profile'

# list and delete duplicate files
alias lsd='ls | grep ".*([0-9]*)\..*"'
alias rmd='ls | grep ".*([0-9]*)\..*" | xargs -d"\n" rm'

# dissertation directory aliases
alias diss='cd ~/l5_dissertation'
alias gen='cd ~/l5_dissertation/code_generation'
alias dat='cd ~/l5_dissertation/data'
alias rep='cd ~/l5_dissertation/interim_report/'
alias sum='cd ~/l5_dissertation/lit_review/paper_summaries'
alias sim='cd ~/l5_dissertation/similarity_experiment'
alias rec='cd ~/l5_dissertation/sc_code/recording_test'
alias wrep='vim ~/l5_dissertation/interim_report/mprop.tex'

# uni directory shortcuts
alias asep='cd ~/uni/asep/asep-coursework-2021'
alias wad='cd ~/tutoring/wad2/rango/tango_with_django_project'
alias runserver='python3 /home/allan/tutoring/wad2/rango/tango_with_django_project/manage.py runserver'

# testing plugin with different soundfiles
alias tpi='rmk && lv2file -i ~/l4_dissertation/soundfiles/piano.wav -o test.wav http://example.org/pPlugin/envDelay && xdg-open test.wav'
alias tsn='rmk && lv2file -i ~/l4_dissertation/soundfiles/shortsine440Hz.wav -o test.wav http://example.org/pPlugin/envDelay && xdg-open test.wav'
alias tno='rmk && lv2file -i ~/l4_dissertation/soundfiles/noise.wav -o test.wav http://example.org/pPlugin/envDelay && xdg-open test.wav'
alias tdr='rmk && lv2file -i ~/l4_dissertation/soundfiles/drum_roll_y.wav -o test.wav http://example.org/pPlugin/envDelay && xdg-open test.wav'
alias tpip='lv2file -n http://example.org/pPlugin/envDelay'
alias adb='cd ~/programs/ardour/gtk2_ardour && ./ardbg'
alias pmem='valgrind lv2file -i ~/l4_dissertation/soundfiles/drum_roll_y.wav -o ~/l4_dissertation/soundfiles/test.wav http://example.org/pPlugin/envDelay'
alias ref='xdg-open ~/l4_dissertation/soundfiles/piano.wav'
alias plugins='lv2file --list'
alias rmk='make && sudo make install'

# launch vimwiki
alias vw='vim ~/vimwiki/index.wiki'
alias td="vim /home/allan/vimwiki/todo.wiki"

# git aliases TODO: move these to separate git config style and alias there
alias gs='git status'
alias gb='git branch'
alias gch="git config credential.helper 'cache --timeout=99999999'"

# java aliases
alias jr='javac *.java && java Main'

#LaTeX aliases
alias lxc='rm *.log *.aux'

alias nt="cp ~/code/templates/c/test.c . && vim test.c"
alias t="gcc -o test.o test.c && ./test.o && rm test.o"

