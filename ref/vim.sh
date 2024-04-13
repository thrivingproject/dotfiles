# Enter Insert Mode
i        # Switch to insert mode at cursor
a        # Switch to insert mode after cursor
o        # Open a new line below and switch to insert mode
O        # Open a new line above and switch to insert mode

# Exiting Vim
:w       # Save the file but don't exit
:q       # Quit if no changes have been made
:q!      # Quit and discard any changes
:wq      # Save the file and exit
:x       # Save the file and exit (similar to :wq)

# Navigation
gg       # Go to the first line of the file
G        # Go to the last line of the file
:number  # Go to the specified line number
0        # Move to the beginning of the line
$        # Move to the end of the line

# Editing
dd       # Delete the current line
yy       # Yank (copy) the current line
p        # Paste below the cursor
P        # Paste above the cursor
u        # Undo the last operation
Ctrl + r # Redo the last undo

# Search
/word    # Search for 'word' in the file (press 'n' to find next, 'N' for previous)
:%s/old/new/g  # Replace all occurrences of 'old' with 'new' in the file
