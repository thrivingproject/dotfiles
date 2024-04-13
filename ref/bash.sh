# Tree
tree

# Tree with Depth
tree -L 2

# Tree ignoring __pycache__, dist, and build
tree -I '__pycache__|dist|build'

# Tree ignoring __pycache__, dist, and build and showing hidden files except git
tree -I '__pycache__|dist|build|.git|.DS_Store' -a

# Print Current Working Directory
pwd

# List Files and Directories in Current Directory
ls

# Change Directory
cd path/to/directory

# Create a New Directory
mkdir new_directory_name

# Remove a Directory (if empty)
rmdir directory_name

# Remove a Directory and its Contents (use with caution)
rm -r directory_name

# Create a New File
touch new_file_name

# Copy Files or Directories
cp source destination

# Move or Rename Files or Directories
mv source destination

# Remove a File
rm file_name

# Display Contents of a File
cat file_name

# Find Files and Directories
find path -name "search_pattern"

# Search Inside Files (grep)
grep "search_string" file_name

# Display First Few Lines of a File
head -n number_of_lines file_name

# Display Last Few Lines of a File
tail -n number_of_lines file_name

# Compare Two Files
diff file1 file2

# Display File Type
file file_name

# Download Files from the Internet (wget)
wget url

# Show Current User
whoami

# Display System Information (uname)
uname -a

# Show Disk Usage
df -h

# Show Memory Usage
free -h

# List Running Processes
ps -aux

# Kill a Process
kill process_id

# Change File Permissions
chmod permissions file_name

# Change File Ownership
chown user:group file_name

# Redirect Output to a File
command > file_name

# Append Output to a File
command >> file_name

# Chain Commands Together (pipe)
command1 | command2

# View the path
echo $PATH

# https://docs.brew.sh/Manpage
# Homebrew: check version
brew --version

# Homebrew: update (this updates Homebrew itself)
brew update

# Homebrew: list installed packages
brew list

# Homebrew: check outdated
brew outdated

# Homebrew: upgrade (this updates package)
brew upgrade package_name
