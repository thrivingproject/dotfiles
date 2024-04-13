# Remove something from Git
git rm --cached <file_path>

# Github (gh) CLI https://cli.github.com/manual/gh
# gh: Check version
gh --version

# List repositories owned by a user or organization (defaults to me)
gh repo list [<owner>] [flags]

# Delete a repository (--yes to skip confirmation)
gh repo delete [<repository>] [flags]

# Create a new repository
gh repo create [<name>] [flags]