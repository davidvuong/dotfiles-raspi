#!/bin/zsh
if [ -d "${ZDOTDIR:-$HOME/.zprezto}" ]; then
  rm -rf "${ZDOTDIR:-$HOME/.zprezto}";
fi

# Install and configure ZSH (using my custom Prezto fork).
git clone --recursive https://github.com/davidvuong/prezto "${ZDOTDIR:-$HOME}/.zprezto"

setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -sf "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

ln -sf ~/.zprezto/zsh_nocorrect ~/zsh_nocorrect

# Change the default login shell to be zsh.
chsh -s /bin/zsh
source ~/.zshrc
