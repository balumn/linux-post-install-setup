cd /tmp/
apt update -y && apt upgrade -y
add-apt-repository universe -y

# essential tools
apt install -y gnome-tweak-tool gcc dkms build-essential vim curl make guake terminator python3-setuptools python3-pymysql python3-pip python3-venv git fish mysql-workbench

# docker
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
newgrp docker
sudo curl -L "https://github.com/docker/compose/releases/download/1.27.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
sudo systemctl enable docker

snap install vlc
snap remove vscode
snap install code --classic
snap install spotify
#snap install android-studio --classic
snap install slack
snap install brave
snap install robo3t-snap


# configuring git
git config --global user.email "balumn@ieee.org"
git config --global user.name "Balu M N"

# installing backup tools
apt-add-repository -y ppa:teejee2008/ppa
apt-get update
apt-get install -y timeshift  


wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb # downloading google chrome
wget https://download.anydesk.com/linux/anydesk_5.5.1-1_amd64.deb # downloading anydesk

dpkg -i *.deb

# installing pop os theme
add-apt-repository -y ppa:system76/pop
apt install pop-theme



# setup finished - clearing caches and rebooting
apt autoremove 
reboot
