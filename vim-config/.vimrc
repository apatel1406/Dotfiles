:echomsg "hello"
set nocompatible
filetype off

" Turn syntax highlighting on.
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'nanotech/jellybeans.vim'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

" Colorscheme
set t_Co=256
colorscheme jellybeans

