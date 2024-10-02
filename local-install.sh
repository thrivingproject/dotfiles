#!/bin/bash
rm ~/.gitignore_global
ln -s ~/.dotfiles/.gitignore_global ~/.gitignore_global
rm ~/.aliases
ln -s ~/.dotfiles/.aliases ~/.aliases
rm ~/.zshrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/scripts ~/scripts
chmod +x ~/scripts/*
