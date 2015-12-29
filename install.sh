#!/usr/bin/env bash

sudo apt-get update

sudo apt-get install zsh
sudo apt-get install vim
sudo apt-get install htop
sudo apt-get install ntfs-3g
sudo apt-get install hfsplus hfsutils hfsprogs
sudo apt-get install samba samba-common-bin
sudo apt-get install xclip

# Install and configure ZSH (using my custom Prezto fork).
zsh
git clone --recursive https://github.com/davidvuong/prezto "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

ln -s ~/.zprezto/zsh_nocorrect ~/zsh_nocorrect
chsh -s /bin/zsh
source ~/.zshrc

# Use my standard vim bindings, configurating and addons.
ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vim/vimrc ~/.vimrc

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

# Install Python related modules.
pip install --upgrade pip
sudo pip install -r ~/dotfiles/requirements.txt

ln -s ~/dotfiles/dircolors ~/.dircolors
ln -s ~/dotfiles/git/gitignore ~/.gitignore
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig

# Configure Samba server my custom rules.
sudo mv /etc/samba/smb.conf /etc/samba/smb.conf.orig
sudo ln -s ~/dotfiles/smb.conf /etc/samba/smb.conf
sudo /etc/init.d/samba restart

sudo mkdir -p /media/{hdd_1,hdd_2,hdd_3,hdd_4}
