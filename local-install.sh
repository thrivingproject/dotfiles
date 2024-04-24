#!/bin/bash
ln -s ~/.dotfiles/.gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
ln -s ~/.dotfiles/.aliases ~/.aliases
rm ~/.zshrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
