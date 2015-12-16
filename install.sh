#!/bin/bash

sudo apt-get install zsh
sudo apt-get vim
sudo apt-get htop

git clone git@github.com:davidvuong/dotfiles-raspi.git ~/dotfiles
cd ~/dotfiles

zsh
git clone --recursive https://github.com/davidvuong/prezto "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

ln -s ~/.zprezto/zsh_nocorrect ~/zsh_nocorrect
chsh -s /bin/zsh

ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vim/vimrc ~/.vimrc

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

source ~/.zshrc

pip install --upgrade pip
sudo pip install -r ~/dotfiles/requirements.txt

ln -s ~/dotfiles/dircolors ~/.dircolors
