###########################################################################
############### My Aliases and Functions x ################################
###########################################################################

alias ssh1='ssh 2254840p@ssh1.dcs.gla.ac.uk'
alias sibu='ssh 2254840p@sibu.dcs.gla.ac.uk'

alias dtp='cd ~/desktop'
alias dwn='cd ~/Downloads'
alias dtf='cd ~/dotfiles'
alias bkg='cd /usr/share/backgrounds/'
alias lv2='cd /usr/lib/lv2/'

alias jupyter='~/.local/bin/jupyter-notebook'
alias chrome='google-chrome'
alias r='ranger --choosedir=$HOME/.rangerdir; LASTDIR=`cat $HOME/.rangerdir`; cd "$LASTDIR"'

# list and delete duplicate files
alias lsd='ls | grep ".*([0-9]*)\..*"'
alias rmd='ls | grep ".*([0-9]*)\..*" | xargs -d"\n" rm'

#l4_dissertation/lv2 related aliases
alias diss='cd ~/l4_dissertation'
alias dco='cd ~/l4_dissertation/src'
alias dsf='cd ~/l4_dissertation/soundfiles'
alias plugins='lv2file --list'
alias dbpi='cd ~/l4_dissertation/soundfiles && gdb /usr/bin/lv2file'
alias rmk='make && sudo make install'

#testing plugin with different soundfiles
alias tpi='rmk && lv2file -i ~/l4_dissertation/soundfiles/piano.wav -o test.wav http://example.org/pPlugin/envDelay && xdg-open test.wav'
alias tsn='rmk && lv2file -i ~/l4_dissertation/soundfiles/shortsine440Hz.wav -o test.wav http://example.org/pPlugin/envDelay && xdg-open test.wav'
alias tno='rmk && lv2file -i ~/l4_dissertation/soundfiles/noise.wav -o test.wav http://example.org/pPlugin/envDelay && xdg-open test.wav'
alias tdr='rmk && lv2file -i ~/l4_dissertation/soundfiles/drum_roll_y.wav -o test.wav http://example.org/pPlugin/envDelay && xdg-open test.wav'
alias tpip='lv2file -n http://example.org/pPlugin/envDelay'

alias adb='cd ~/programs/ardour/gtk2_ardour && ./ardbg'
alias pmem='valgrind lv2file -i ~/l4_dissertation/soundfiles/drum_roll_y.wav -o ~/l4_dissertation/soundfiles/test.wav http://example.org/pPlugin/envDelay'
alias ref='xdg-open ~/l4_dissertation/soundfiles/piano.wav'

#launch vimwiki
alias vw='vi ~/vimwiki/index.wiki'

#git aliases TODO: move these to separate git config style and alias there
alias gs='git status'
alias gb='git branch'
alias gch="git config credential.helper 'cache --timeout=99999999'"

#java aliases
alias jr='javac *.java && java Main'

#aliases for vimrc and bashrc
alias vrc='vi ~/dotfiles/vimrc'
alias brc='vi ~/dotfiles/bashrc'
alias td="vi /home/allan/vimwiki/todo.wiki"

#LaTeX aliases
alias lxc='rm *.log *.aux'

alias nt="cp ~/code/templates/c/test.c . && vi test.c"
alias t="gcc -o test.o test.c && ./test.o && rm test.o"

# open todos
alias na='bash ~/dotfiles/newalias.sh'


