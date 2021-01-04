#!/bin/bash

ubuntu20() {
    WISHLIST=".whishlist_ubuntu20"
}

install_all() {
    IFS=$'\n' PKG_TO_INSTALL=$(tr -d ' ' <"$WISHLIST")
    for package in ${PKG_TO_INSTALL[$@]}; do
        sudo apt install "$package" -y
    done
}

FUN_TO_RUN=$1
[[ `type -t "$FUN_TO_RUN"`"" == 'function' ]] && \
        "$FUN_TO_RUN" && \
        install_all 
