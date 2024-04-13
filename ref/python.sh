# Start Python Interactive Shell
python

# Check Python Version
python --version

# pip: install a Package with pip
pip install package_name

# Uninstall a Package with pip
pip uninstall package_name

# List Installed Packages
pip list

# Show Information About a Specific Package
pip show package_name

# List Outdated Packages
pip list --outdated

# Upgrade a Package
pip install --upgrade package_name

# Freeze Installed Packages to a Requirements File
pip freeze > requirements.txt

# Install Packages from a Requirements File
pip install -r requirements.txt

# pipreqs: Create requirements.txt file from project
pipreqs /path/to/project

# py2app: Create setup.py file (replace 'main.py' with your main Python file)
py2applet --make-setup main.py

# py2app: Build Application
python setup.py py2app -A


# venv: create a Virtual Environment (Replace 'env_name' with your desired environment name)
python -m venv env_name

# venv: Activate Virtual Environment
source env_name/bin/activate

# venv: Deactivate Virtual Environment
deactivate

# https://github.com/pyenv/pyenv/blob/master/COMMANDS.md
# pyenv: Check version
pyenv --version

# pyenv: view installable versions
pyenv install --list

# pyenv: uninstall a Python version
pyenv uninstall #.#.#

# pyenv: install a Python version
pyenv install #.#.#

# pyenv: view installed versions
pyenv versions