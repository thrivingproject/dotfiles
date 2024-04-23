# #!/bin/bash
ln -s ~/.dotfiles/.gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
ln -s ~/.dotfiles/.aliases ~/.aliases
rm ~/.zshrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
touch ~/.secrets
echo export OPENAI_API_KEY=foo >> ~/.secrets