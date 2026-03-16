#!/bin/bash
#

ALIAS="$HOME/dotfiles/homefiles/.bash_aliases"
MOVE="$HOME/.bash_aliases"

cp "$ALIAS" "$MOVE"
echo "Copied .bach_aliases to home directory"

echo "Reload your environment by running 'source ~/.bash_aliases', or you can log out and log back in."