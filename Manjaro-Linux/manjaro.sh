#!/bin/bash

cd /tmp/
echo -e " Install essential applications"

# Personalize according to your taste or install these solid defaults.
# You can also add more stuff like your favorite shell.

terminal=terminator 
fileManager=dolphin
quickLauncher=albert
torrentClient=qbittorrent
textEditor=code
dropDownTerminal=tilda
imageEditor=gimp
backupTool=timeshift
mediaPlayer=vlc
taskManager=htop
screenshot=flameshot
audioEditor=audacity

# Upgrade the system and install packages
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm gcc vim curl make git neofetch ark gparted redshift

sudo pacman -S --noconfirm $terminal $fileManager $quickLauncher $torrentClient $textEditor $dropDownTerminal $imageEditor $backupTool $mediaPlayer $taskManager $screenshot $audioEditor


-----------------------------------------------------------------
-----------------------------------------------------------------
#Other Apps : Comment these lines if you dont want to install.

# STACER - Linux System Optimizer and Monitoring Tool
git clone https://aur.archlinux.org/stacer.git
cd stacer
makepkg -si

# Sublime Text Stable
echo -e "\n Installing SUBLIME-TEXT - A sophisticated text editor for code, markup and prose "
curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
sudo pacman -Syu --noconfirm sublime-text

-----------------------------------------------------------------
-----------------------------------------------------------------

# Removing unused packages (orphans)
sudo pacman -Rns $(pacman -Qtdq)