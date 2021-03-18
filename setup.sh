#!/bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp ./.vimrc ~/.

if ! command -v node &> /dev/null
then
        echo "Node was not found.. you need to install node for autocomplete to work"
        exit
fi

