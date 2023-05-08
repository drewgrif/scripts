#!/bin/bash

sudo apt install curl -y
sudo apt install neovim -y -t unstable

# in order for the nerdtree to look good, consider running nerdfonts.sh

# Retrieve https://github.com/junegunn/vim-plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    
cp -r ./resources/nvim ~/.config/

:so %  
:PlugInstall

