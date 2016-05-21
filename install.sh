#/!/bin/bash

set -e -x

sudo apt-get update

# curl
sudo apt-get -y install curl

# vim
sudo apt-get -y install vim
stat ~/.vim || curl vimfiles.luan.sh/install | bash
~/.vim/update

# tmux
sudo apt-get -y install tmux
wget -O ~/.tmux.conf https://raw.githubusercontent.com/luan/dotfiles/master/tmux.conf
