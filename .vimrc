syntax enable
set tabstop=2
set expandtab
set number
set hlsearch
filetype indent on
set autoindent
colorscheme pablo

augroup filetypedetect
    au BufRead,BufNewFile *.bashrc setfiletype bash
augroup END

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add plugins here

call vundle#end()
filetype plugin indent on
