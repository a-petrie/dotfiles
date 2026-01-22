HOME="/home/$(whoami)/"

bind 'set bell-style none'

export HISTFILESIZE=10000
export HISTSIZE=10000

export PATH=$PATH:"$HOME/.local/bin/"

export EDITOR=nvim
export VISUAL=nvim

# appends history so tmux panes can share
export PROMPT_COMMAND="history -a; history -n"

force_color_prompt=yes

na () {
    read -p "Enter alias name: " name
    read -p "Enter alias command: " cmd
    echo "alias $name='$cmd'" >> ~/.bash_aliases
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

eval "$(starship init bash)"
