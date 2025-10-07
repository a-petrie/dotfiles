HOME="/home/$(whoami)/"

bind 'set bell-style none'

export HISTFILESIZE=10000
export HISTSIZE=10000

export PATH=$PATH:"$HOME/.local/bin/"

export EDITOR=nvim
export VISUAL=nvim

# appends history so tmux panes can share
export PROMPT_COMMAND="history -a; history -n"

# include work stuff if it's there
source ~/.bash_aliases
if [ -f ~/.bash_aliases_work ]; then
    source ~/.bash_aliases_work
fi

if [ -f ~/.bashrc_work ]; then
    source ~/.bashrc_work
fi

export UTILS_DIR=$HOME"/util-scripts"

force_color_prompt=yes

# prompt format
PS1='\[\033[037m\]\u@\h\[\033[00m\]:\W> '

na () {
    read -p "Enter alias name: " name
    read -p "Enter alias command: " cmd
    echo "alias $name='$cmd'" >> ~/.bash_aliases
}

vim () {
    nvim $1
}

lizardrep() {
    LIZARD_INSTALL="$HOME/.local/bin/lizard"
    REPORT_DIR="$HOME/lizard_reports"
    echo $REPORT_DIR
    mkdir -p $REPORT_DIR $LIZARD_INSTALL -L50 -w -t10 -snloc $1 >> $REPORT_DIR/nloc.report
    $LIZARD_INSTALL -C8 -w -t10 -scyclomatic_complexity $1 >> $REPORT_DIR/ccn.report
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

killpids() {
    for pid in "$@"; do
        if kill -0 "$pid" 2>/dev/null; then
            kill -9 "$pid"
        fi
    done
}

clear_conan_remotes() {
    for remote in develop_test packages_test products_test; do
        conan remote enable $remote
        conan remove login $remove apetrie -p "changeThisPlsThx+1"
        conan remove "*" -r=$remote -c
        conan remote disable $remote
    done
}

eval "$(starship init bash)"

