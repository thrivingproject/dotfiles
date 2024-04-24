# dotfiles (~/.)

## Local VS Code devcontainer dotfiles incorporation

Modify VS Code Dev Containers extension's *Dotfiles* settings to use dotfiles from this repo. Use `install-local.sh` as the value for the install command field. Do not sync these settings so that settings sync can still be used with codespaces without interfering with codespaces' own dotfiles setup.

See [VSCode devcontainer docs](https://code.visualstudio.com/docs/devcontainers/containers#_personalizing-with-dotfile-repositories) for more information.

## Codespaces dotfiles incorporation

Change GitHub settings to automatically install dotfiles when creating a codespace. Codespaces should not use the `./local-install.sh` script to setup the environment so that it can put the files where it needs them. It will replace the default dotfiles with the ones in this repo.

See [GitHub codespaces docs](https://docs.github.com/en/codespaces/setting-your-user-preferences/personalizing-github-codespaces-for-your-account#dotfiles) form more information.

## Environment variables, API Keys, secrets

### Using local environment variables in devcontainers

Export to environment in `.zprofile`. This is safe because `.zprofile` is not a part of this repository. Then add the `containerEnv` property to `devcontainer.json` per [advanced container docs](https://code.visualstudio.com/remote/advancedcontainers/environment-variables).

### Using secrets in codespaces

Use the [secrets](https://docs.github.com/en/codespaces/managing-your-codespaces/managing-your-account-specific-secrets-for-github-codespaces) tool in codespaces settings.

## Git

Account configuration (credentials) is only needed when using devcontainers locally. [Dev Containers will automatically copy local `.gitignore` to the container](https://code.visualstudio.com/remote/advancedcontainers/sharing-git-credentials). `gitignore_global` is included and installed by this repo.

*Note: no `git config` command should be executed from the install script, because this will create a `.gitconfig` file in the home directory, which will cause devcontainers to skip copying the local `.gitignore` file to the container (see the **dev.containers.copyGitConfig** setting in VS Code).*

## Setup

Do this when setting up a new computer:

```bash
gh repo clone thrivingproject/dotfiles ~/.dotfiles
cd .dotfiles
./local-install.sh
```
