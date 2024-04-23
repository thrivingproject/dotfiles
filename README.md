# dotfiles (~/.)

## Local Visual Studio Code devcontainer

To use in a devcontainer, modify VS Code *Dotfiles* settings so that when a devcontainer is created it will use the dotfiles in this repo. Use `install-local.sh` as the value for the install command field. Do not sync these settings so that settings sync can still be used with codespaces without interfering with codespaces' own dotfiles setup.

See [VSCode devcontainer docs](https://code.visualstudio.com/docs/devcontainers/containers#_personalizing-with-dotfile-repositories) for more information.

## Codespaces

Change GitHub settings to automatically install dotfiles when creating a codespace. As of now, a universal setup script is not supported. Codespaces should not use the `./local-install.sh` script to setup the environment but will instead replace the default dotfiles with the ones in this repo.

See [GitHub codespaces docs](https://docs.github.com/en/codespaces/setting-your-user-preferences/personalizing-github-codespaces-for-your-account#dotfiles) form more information.

## API Keys, secrets

Save these in `~/.secrets`. `.zshrc` will source this file if it exists. Do not symlink this file.

## Setup

Do this when setting up a new computer.

```bash
git clone thrivingproject/dotfiles ~/.dotfiles
cd .dotfiles
./local-install.sh
```
