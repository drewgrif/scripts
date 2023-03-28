#!/bin/bash

sudo apt install neovim -y
sudo apt install curl -y

# Retrieve https://github.com/junegunn/vim-plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    
cp -r ./resources/nvim ~/.config/

:so %  
:PlugInstall

