# dotfiles (~/.)

This repo is used in conjunction with [devcontainers](https://www.github.com/devcontainers) to setup a development environment. The dotfiles are used to configure the shell and other tools. It can also be used when resetting or replacing a personal computer.

## Setup

Clone this repo and run the `setup.sh` script.

```bash
git clone
cd dotfiles
./local-install.sh
```

## Local VSCode devcontainer

Modify VSCode Dotfiles settings so that when a devcontainer is created it will use the dotfiles in this repo. Make sure use `install-local.sh` as the value for the install command field. These settings are not synced which means settings sync can still be used with codespaces without interfering with codespaces dotfiles setup.

See [VSCode devcontainer docs](https://code.visualstudio.com/docs/devcontainers/containers#_personalizing-with-dotfile-repositories) for more information.

## Codespaces

Change GitHub settings to automatically install dotfiles when creating a codespace. As of now, a universal setup script is not supported. Codespaces should not use the `./local-install.sh` script to setup the environment but will instead replace the default dotfiles with the ones in this repo.

See [GitHub codespaces docs](https://docs.github.com/en/codespaces/setting-your-user-preferences/personalizing-github-codespaces-for-your-account#dotfiles) form more information.
