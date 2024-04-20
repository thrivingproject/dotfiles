#!/bin/bash
ln -s ~/dotfiles/.aliases ~/.aliases
rm ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
source ~/.zshrc
echo "Welcome to the dev env!"