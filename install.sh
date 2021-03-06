#!/usr/bin/env bash

sudo apt-get update

sudo apt-get -y install git
sudo apt-get -y install zsh
sudo apt-get -y install vim
sudo apt-get -y install htop
sudo apt-get -y install ntfs-3g
sudo apt-get -y install hfsplus hfsutils hfsprogs
sudo apt-get -y install samba samba-common-bin
sudo apt-get -y install python-dev
sudo apt-get -y install xclip
sudo apt-get -y install build-essential
sudo apt-get -y install cmake
sudo apt-get -y install pkg-config

# All necessary OpenCV dependencies:
sudo apt-get -y install libavcodec-dev libavformat-dev libswscale-dev libx264-dev libv4l-dev
sudo apt-get -y install libgtk2.0-dev
sudo apt-get -y install libatlas-base-dev gfortran

# Install zsh.
sudo ./install_zsh.zsh

# Use my standard vim bindings, configurating and addons.
ln -sf ~/dotfiles/vim ~/.vim
ln -sf ~/dotfiles/vim/vimrc ~/.vimrc

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

# Install Python related modules.
sudo pip install --upgrade pip
sudo pip install -r requirements.txt

ln -sf ~/dotfiles/dircolors ~/.dircolors
ln -sf ~/dotfiles/git/gitignore ~/.gitignore
ln -sf ~/dotfiles/git/gitconfig ~/.gitconfig

# Configure Samba server my custom rules.
sudo mv /etc/samba/smb.conf /etc/samba/smb.conf.orig
sudo ln -sf ~/dotfiles/smb.conf /etc/samba/smb.conf
sudo /etc/init.d/samba restart

sudo mkdir -p /media/{hdd_1,hdd_2,hdd_3,hdd_4}
