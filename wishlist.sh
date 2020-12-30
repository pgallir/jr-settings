#!/bin/bash

ubuntu20() {
    source .whishlist_ubuntu20.sh
}

install_all() {
    for package in ${PKG_TO_INSTALL[$@]}; do
        sudo apt install "$package" -y
    done
}

FUN_TO_RUN=$1
[[ `type -t "$FUN_TO_RUN"`"" == 'function' ]] && \
        "$FUN_TO_RUN" && \
        install_all 
