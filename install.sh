#/!/bin/bash

set -e -x

sudo apt-get update

# Make Caps Lock a second Ctrl (http://askubuntu.com/questions/462021/how-do-i-turn-caps-lock-into-an-extra-control-key)
sudo apt-get install gnome-tweak-tool

# Prevent Alt from displaying the HUD (http://askubuntu.com/questions/151951/how-do-i-prevent-ubuntu-from-capturing-the-alt-key-to-show-the-hud)
sudo apt-get -y install compizconfig-settings-manager

# bash-it
if [ ! -d ~/.bash_it ]; then
  git clone --depth=1 https://github.com/Bash-it/bash-it.git $HOME/.bash_it
  $HOME/.bash_it/install.sh --none
fi

cp "$PWD"/bash-it-custom/*.bash "$HOME"/.bash_it/custom/

# curl
sudo apt-get -y install curl

# vim
sudo apt-get -y install vim
stat ~/.vim || curl vimfiles.luan.sh/install | bash
~/.vim/update

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

