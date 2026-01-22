# |--------------------------------------------------------------------|
# |        _ _             _         _               _                 |
# |   __ _| | | __ _ _ __ ( )___    | |__   __ _ ___| |__  _ __ ___    |
# |  / _` | | |/ _` | '_ \|// __|   | '_ \ / _` / __| '_ \| '__/ __|   |
# | | (_| | | | (_| | | | | \__ \  _| |_) | (_| \__ \ | | | | | (__    |
# |  \__,_|_|_|\__,_|_| |_| |___/ (_)_.__/ \__,_|___/_| |_|_|  \___|   |
# |                                                                    |
# |--------------------------------------------------------------------|

HOME="/home/$(whoami)/"
BASHRC="$HOME/.bashrc"
ACCOUNTS_DRIVE="/mnt/g/Shared drives/Z drive/Accounts"


bind 'set bell-style none'

export HISTFILESIZE=10000
export HISTSIZE=10000

export PATH=$PATH:"$HOME/.local/bin/"

export EDITOR=nvim
export VISUAL=nvim

# appends history so tmux panes can share
export PROMPT_COMMAND="history -a; history -n"

export PATH="$HOME/.local:$PATH"

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

sapti () {
  sudo apt install $1
}

xdg() {
  xdg-open $1
}

newbeat() {
  echo $1 >> ~/music/freestyle-beats/.yturls
}

pk() {
  pgrep $1
  pgrep $1 | xargs -d"\n" kill
}

nwp () {
  ls /usr/share/backgrounds | xargs -d"\n" shuf -e -n 1 | awk '{print  "file:///usr/share/backgrounds/" $0}' | xargs gsettings set org.gnome.desktop.background picture-uri
}

vim () {
    nvim $1
}

attach() {
    tmux attach -t $1
}

GDB() {
    gdb -x ~/gdb_commands.txt --args $1 "$@"
}

gitopened() {
    BRANCH=`git branch --show-current`
    git ls-tree -r $BRANCH --name-only
}

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#adding this to deal with annoying typos
alias sl='ls'


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

                                                                
print_pdf() {
    PRINTER="Brother HL-L8260CDW series Printer" 
    /mnt/c/Users/accou/AppData/Local/SumatraPDF/SumatraPDF.exe -print-to "$PRINTER" "$1"
}

alias joinpdf='pdfunite *.pdf combined.pdf'

printall() {
    joinpdf
    print_pdf combined.pdf
    rm combined.pdf
    mv *.pdf "To File"
}

eval "$(starship init bash)"
