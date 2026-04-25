#!/bin/bash
cp /home/g_sigler/dotfiles/vim-config/.vimrc ~/.vimrc

if [ ! -d "/home/patel/.vim/bundle/Vundle.vim" ]; then
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

vim +PluginInstall +qall
