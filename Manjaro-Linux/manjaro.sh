#!/bin/bash

cd /tmp/
echo -e " Install essential applications"
echo " Enter password at the prompt below to continue (ctrl+c to cancel)"

#These apps will be installed 
sudo pacman -Syu
sudo pacman -S vlc gcc tilda code vim curl make git neofetch ark gparted redshift qbittorrent albert 

#Choose Terminal  
echo -e "\n Choose your Terminal Emulator"
echo " 1. Terminator"
echo " 2. Konsole"
echo " 3. Gnome Terminal"
echo " 4. Kitty"
echo " (press n to skip)"
read option 

case $option in 
	1) sudo pacman -S terminator;;
	2) sudo pacman -S konsole;;
	3) sudo pacman -S gnome-terminal;;
	4) sudo pacman -S kitty;;
	"n") break ;;
	*) echo "Invalid choice";;
esac

#Dolphin 
echo -e "\n Install DOLPHIN - KDE File Manager"
echo " y - continue / - n to skip this installation"
read option

if [[ "$option" = "n" || "$option" = "N" ]]
then 
	break
else 
	sudo pacman -S dolphin
fi

# Stacer
echo -e "\n Install STACER - Linux System Optimizer and Monitoring Tool "
echo " y - continue / n - to skip this installation"
read option

if [[ "$option" = "n" || "$option" = "N" ]]
then 
	break
else 
	git clone https://aur.archlinux.org/stacer.git
	cd stacer
	makepkg -si
fi

#Sublime Text Stable
echo -e "\n Install SUBLIME-TEXT - A sophisticated text editor for code, markup and prose "
echo " y - continue / n - to skip this installation"
read option

if [[ "$option" = "n" || "$option" = "N" ]]
then 
	break
else	
	curl -O https://download.sublimetext.com/sublimehq-pub.gpg && sudo pacman-key --add sublimehq-pub.gpg && sudo pacman-key --lsign-key 8A8F901A && rm sublimehq-pub.gpg
	echo -e "\n[sublime-text]\nServer = https://download.sublimetext.com/arch/stable/x86_64" | sudo tee -a /etc/pacman.conf
	sudo pacman -Syu sublime-text
fi

#Gimp 
echo -e "\n Install GIMP - The Free & Open Source Image Editor"
echo " y - continue / n - to skip this installation"
read option

if [[ "$option" = "n" || "$option" = "N" ]]
then 
	break
else 
	sudo pacman -S gimp
fi

echo -e "\n Blessed are those who assign copyright to the FSF, for they will inherit the Kingdom of GNU(tm)"