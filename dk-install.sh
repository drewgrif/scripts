#!/bin/bash

sudo apt install -y libxcb-randr0-dev 
sudo apt install -y libxcb-util-dev
sudo apt install -y libxcb-icccm4-dev 
sudo apt install -y libxcb-cursor-dev 
sudo apt install -y libxcb-keysyms1-dev 

cd ~/Downloads
git clone https://bitbucket.org/natemaia/dk.git
cd dk
make
sudo make install
cd ~
mkdir -p ~/.config/dk
cp /usr/local/share/doc/dk/dkrc ~/.config/dk/
cp /usr/local/share/doc/dk/sxhkdrc ~/.config/dk/
