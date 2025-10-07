#!/bin/bash

cp -r .git* ~/
cd ..
git restore .


curl -sS https://starship.rs/install.sh | sh

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage

mkdir -p .local/bin/
mv nvim.appimage .local/bin/

# dependencies for YouComepleteMe/nvim
apt install cmake
apt install npm
apt install python3-pip
apt install python3-pynvim

python3 ~/.vim/plugged/YouCompleteMe/install.py --all

# tmux stuff!
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf
