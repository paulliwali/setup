#!/bin/bash
# Simple setup.sh for configuring Ubuntu 12.04 LTS EC2 instance
# for headless setup. 

#Personal Package Archive (PPA) for Ubuntu Precise
sudo apt-get install software-properties-common python-software-properties

# Install vim
sudo apt-get install vim

# Install nodejs: javascript backend platform
# Install nvm: node-version manager
# https://github.com/creationix/nvm
sudo apt-get install -y git
sudo apt-get install -y curl
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get install -y nodejs

# Install rlwrap to provide libreadline features with node
# See: http://nodejs.org/api/repl.html#repl_repl
sudo apt-get install -y rlwrap

# Install Heroku toolbelt
# https://toolbelt.heroku.com/debian
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# Install vundle to handle vim plugins
# https://github.com/gmarik/vundle
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

# git pull and install dotfiles as well
cd $HOME
if [ -d ./dotfiles/ ]; then
    rm -rf dotfiles.old
    mv dotfiles dotfiles.old
fi
git clone ssh://git@github.com/paulliwali/dotfiles.git
ln -sf dotfiles/.bash_profile .
ln -sf dotfiles/.bashrc .
ln -sf dotfiles/.bashrc_custom .
ln -sf dotfiles/.vimrc .

# Moving vim color schemes into the appropriate color folder
cd .vim
ln -sf ~/dotfiles/.vim/colors .
cd $HOME



