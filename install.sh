#/!/bin/bash

set -e -x

sudo apt-get update

# install the locale to get rid of the warning
sudo apt-get -y install language-pack-en

# curl
sudo apt-get -y install curl

# git
sudo apt-get -y install git

# vim
sudo apt-get -y install vim

# tmux
sudo apt-get -y install tmux
wget -O ~/.tmux.conf https://raw.githubusercontent.com/luan/dotfiles/master/tmux.conf

# golang
sudo apt-get -y install golang-1.6
