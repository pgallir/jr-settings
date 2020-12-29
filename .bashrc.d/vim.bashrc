#!/bin/bash

# vundle
VUNDLE_REMOTE=https://github.com/VundleVim/Vundle.vim.git
VUNDLE_LOCAL=~/.vim/bundle/Vundle.vim
[[ ! -d  "$VUNDLE_LOCAL" ]] && git clone $VUNDLE_REMOTE $VUNDLE_LOCAL
