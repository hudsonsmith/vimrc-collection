#! /bin/bash

# Save the real .vimrc in a backup loacation in the home dir.
cp /mnt/c/Users/hudso/_dev/dotfiles/.vimrc ~/.vimrc.bak

# Ask which .vimrc they would like to try
read -p "Which vimrc would you like to use?" vimrc

# Replace the current .vimrc with the temporary one.
cp /mnt/c/Users/hudso/_dev/vimrc_collection/$vimrc ~/.vimrc

# Open Vim.
vim

# After the vim session is done, copy the original vimrc back into ~/.vimrc.
cp ~/.vimrc.bak ~/.vimrc
