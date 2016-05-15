#/!/bin/bash

set -e -x

sudo apt-get update

# curl
sudo apt-get -y install curl

# vim
sudo apt-get -y install vim
stat ~/.vim || curl vimfiles.luan.sh/install | bash
curl vimfiles.luan.sh/install | bash

# tmux
sudo apt-get -y install tmux
wget -O ~/.tmux.conf https://raw.githubusercontent.com/luan/dotfiles/master/tmux.conf

# skype
sudo dpkg --add-architecture i386
sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo apt-get update && sudo apt-get -y install skype

# google-chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository "deb http://dl.google.com/linux/chrome/deb/ stable main"
sudo apt-get update && sudo apt-get -y install google-chrome-stable

