#!/bin/bash
# Path to the source .bash_aliases file in my dotfiles directory
ALIAS="$HOME/dotfiles/homefiles/.bash_aliases"
MOVE="$HOME/.bash_aliases"

# Copy the aliases file from the dotfiles location to the home directory
cp "$ALIAS" "$MOVE"
echo "Copied .bach_aliases to home directory"

# Provide instructions to reload the shell environment
echo "Reload your environment by running 'source ~/.bash_aliases', or you can log out and log back in."
