syntax enable
set tabstop=4
set expandtab
set number
filetype indent on
set autoindent
colorscheme pablo

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Add plugins here

call vundle#end()
filetype plugin indent on
