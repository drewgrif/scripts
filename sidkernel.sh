#!/bin/bash
# Copyright 2023 
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.


# Default packages are for the configuration and corresponding .config folders
# Install packages after installing base Debian with no GUI

echo
echo "****************************************************"
echo "****  RECOMMENDATION TO ONLY USE IF YOU ARE ON  ****"
echo "****      DEBIAN BULLSEYE MINIMAL INSTALL       ****"
echo
echo "This script is intended for Debian Bullseye Minimal Install"
read -p "Do you want to proceed? (yes/no) " yn

case $yn in 
	yes ) echo ok, we will proceed;;
	no ) echo exiting...;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac
echo
echo
echo "***************************************************"
echo "****  Adding Debian unstable/sid to apt list   ****"
echo
echo
sudo echo 'deb http://deb.debian.org/debian/ unstable main non-free contrib' | sudo tee -a /etc/apt/sources.list
echo
echo "********************************************"
echo "****   Adding Preferences to Apt List   ****"
echo
echo
cat > ./temp << "EOF"
Package: *
Pin: release a=bullseye
Pin-Priority: 500

Package: linux-image-amd64
Pin: release a=unstable
Pin-Priority: 900

Package: *
Pin: release a=unstable
Pin-Priority: 100
EOF
sudo cp ./temp /etc/apt/preferences;rm ./temp

echo "*********************************************"
echo "****  Add Latest Kernel from Debian Sid  ****"
echo
sudo apt update -yy && sudo apt upgrade -yy
echo
echo
echo "******************************************"
echo "****  Remove Debian Bullseye Kernel   ****"
echo
sudo apt autoremove -yy
