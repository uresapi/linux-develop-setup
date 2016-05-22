#/!/bin/bash
GOFILE=go1.6.2.linux-amd64.tar.gz

set -e -x

sudo apt-get update
sudo apt-get -y upgrade

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
sudo curl -O https://storage.googleapis.com/golang/$GOFILE
sudo tar -xvf $GOFILE
# clean the previous versions
sudo rm -rf /usr/local/go
sudo mv go /usr/local
sudo rm -rf $GOFILE

# setup go
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
go get github.com/tools/godep

mkdir -p $HOME/go/src/github.com/uresapi
pushd $HOME/go/src/github.com/uresapi
git clone https://github.com/uresapi/fbm-bot.git
cd fbm-bot
godep restore
popd
