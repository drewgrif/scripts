#!/bin/bash

# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

# xorg display server installation
sudo apt install -y xorg xbacklight xbindkeys xvkbd xinput

# PACKAGE INCLUDES build-essential.
sudo apt install -y build-essential

# Microcode for Intel/AMD 
# sudo apt install -y amd64-microcode
sudo apt install -y intel-microcode 

# Network File Tools/System Events
sudo apt install -y dialog mtools dosfstools avahi-daemon acpi acpid gvfs-backends xfce4-power-manager

sudo systemctl enable avahi-daemon
sudo systemctl enable acpid

# Networking etc
sudo apt install -y policykit-1-gnome network-manager network-manager-gnome

# Thunar
sudo apt install -y thunar thunar-archive-plugin thunar-volman file-roller

# terminal
sudo apt install -y xfce4-terminal -y

# Terminal (eg. terminator,kitty,xfce4-terminal)
sudo apt install -y tilix

# Sound packages
sudo apt install -y pulseaudio alsa-utils pavucontrol volumeicon-alsa

# Neofetch/HTOP
sudo apt install -y neofetch htop

# Network Manager
sudo apt install -y network-manager network-manager-gnome 

# Installation for Appearance management
sudo apt install -y lxappearance 

# Browser Installation (eg. chromium)
sudo apt install -y firefox-esr 

# Desktop background browser/handler 
# feh --bg-fill /path/to/directory 
# sudo apt install -y nitrogen 
sudo apt install -y feh
 
# Fonts and icons for now
sudo apt install -y fonts-recommended fonts-ubuntu fonts-font-awesome fonts-terminus papirus-icon-theme 

# EXA installation
# replace ls command in .bashrc file with line below
# alias ls='exa -al --long --header --color=always --group-directories-first' 
sudo apt install -y exa

# Printing and bluetooth (if needed)
sudo apt install -y cups system-config-printer simple-scan
# sudo apt install -y bluez blueman

sudo systemctl enable cups
# sudo systemctl enable bluetooth

# Packages needed for bspwm installation
sudo apt install -y bspwm suckless-tools sxhkd picom rofi dunst libnotify-bin unzip 

# my favs
sudo apt install -y numlockx geany geany-plugins scrot evince pdfarranger transmission-gtk gimp obs-studio mkvtoolnix-gui
sudo apt install -y mpv figlet qimgv l3afpad galculator redshift

# Command line text editor -- nano preinstalled 
sudo apt install -y micro
# sudo apt install -y vim

# Create folders in user directory (eg. Documents,Downloads,etc.)
xdg-user-dirs-update

mkdir -p ~/.config/{bspwm,sxhkd,dunst}

install -Dm755 /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/bspwmrc
install -Dm644 /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/sxhkdrc

# Install Lightdm Console Display Manager
sudo apt install -y lightdm lightdm-gtk-greeter-settings
sudo systemctl enable lightdm


########################################################
# End of script for default config
#

## These two scripts will install nerdfonts and copy my configuration files into the ~/.config directory
## Configuration uses 

source ~/debian-installers/nerdfonts.sh


sudo apt autoremove

printf "\e[1;32mYou can now reboot! Thanks you.\e[0m\n"
