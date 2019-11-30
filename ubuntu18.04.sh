apt update -y && apt upgrade -y

add-apt-repository universe -y

cd /tmp/

# essential tools
apt install -y gnome-tweak-tool gcc dkms build-essential vim curl make guake terminator python3-setuptools python3-pymysql python3-pip python3-venv git fish tee

git config --global user.email "balumn@ieee.org"
git config --global user.name "Balu M N"

# configuring fish
chsh -s /usr/bin/fish
curl -L https://get.oh-my.fish | fish
omf install godfather

snap install vlc
snap remove vscode
snap install code --classic
snap install shotcut
snap install android-studio
snap install slack
snap install brave
snap install robo3t-snap

apt-add-repository -y ppa:teejee2008/ppa
apt-get update
apt-get install -y timeshift neofetch 


# installing google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb

# installing pop os theme
add-apt-repository -y ppa:system76/pop
apt install pop-theme
apt autoremove 
