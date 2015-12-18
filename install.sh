#!/bin/bash
sudo apt-get install zsh
sudo apt-get vim
sudo apt-get htop

zsh
git clone --recursive https://github.com/davidvuong/prezto "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
    ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

ln -s ~/.zprezto/zsh_nocorrect ~/zsh_nocorrect
chsh -s /bin/zsh
source ~/.zshrc

ln -s ~/dotfiles/vim ~/.vim
ln -s ~/dotfiles/vim/vimrc ~/.vimrc

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleInstall +qall

pip install --upgrade pip
sudo pip install -r ~/dotfiles/requirements.txt

ln -s ~/dotfiles/dircolors ~/.dircolors
ln -s ~/dotfiles/git/gitignore ~/.gitignore
ln -s ~/dotfiles/git/gitconfig ~/.gitconfig
