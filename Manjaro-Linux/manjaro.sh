#!/bin/bash

cd /tmp/

echo -e "Installing essential applications"
echo "Enter password at the prompt below to continue (ctrl+c to cancel)"

sudo pacman -Syu
sudo pacman -S vlc gcc tilda code vim curl make git neofetch ark gparted redshift qbittorrent albert 

# Stacer
git clone https://aur.archlinux.org/stacer.git
cd stacer
makepkg -si

#Sublime Text Stable
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg

echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf

sudo pacman -Syu sublime-text

#Gimp 
sudo pacman -S gimp