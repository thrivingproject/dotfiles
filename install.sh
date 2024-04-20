#!/bin/bash
ln -s ~/dotfiles/.aliases ~/.aliases
rm ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
source ~/.zshrc
# kill the current terminal session
kill -9 $PPID
# open a new zsh session
zsh
echo "Welcome to the dev env!"