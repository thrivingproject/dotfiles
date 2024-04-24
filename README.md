# dotfiles (~/.)

## Local VS Code devcontainer dotfiles incorporation

Modify VS Code Dev Containers extension's *Dotfiles* settings to use dotfiles from this repo. Use `install-local.sh` as the value for the install command field. Do not sync these settings so that settings sync can still be used with codespaces without interfering with codespaces' own dotfiles setup.

See [VSCode devcontainer docs](https://code.visualstudio.com/docs/devcontainers/containers#_personalizing-with-dotfile-repositories) for more information.

## Codespaces dotfiles incorporation

Change GitHub settings to automatically install dotfiles when creating a codespace. Codespaces should not use the `./local-install.sh` script to setup the environment so that it can put the files where it needs them. It will replace the default dotfiles with the ones in this repo.

See [GitHub codespaces docs](https://docs.github.com/en/codespaces/setting-your-user-preferences/personalizing-github-codespaces-for-your-account#dotfiles) form more information.

## Environment variables, API Keys, secrets

### Local

Export to environment in `.zprofile`. This is safe because `.zprofile` is not a part of this repository. Then add the `containerEnv` property to `devcontainer.json` per [advanced container docs](https://code.visualstudio.com/remote/advancedcontainers/environment-variables).

### Codespaces

Use the *secrets* tool in codespaces settings.

## Setup

Do this when setting up a new computer:

```bash
gh repo clone thrivingproject/dotfiles ~/.dotfiles
cd .dotfiles
./local-install.sh
```
