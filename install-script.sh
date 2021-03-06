#!/bin/bash

#Install timeshift
sudo add-apt-repository ppa:teejee2008/ppa
sudo apt-get update
sudo apt-get install timeshift -y

#Install docker
# sudo apt-get update

# sudo apt-get install \
#     apt-transport-https \
#     ca-certificates \
#     curl \
#     gnupg-agent \
#     software-properties-common

# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# sudo apt-key fingerprint 0EBFCD88

# sudo add-apt-repository \
#    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#    $(lsb_release -cs) \
#    stable"
   
# sudo apt-get update

# sudo apt-get install docker-ce docker-ce-cli containerd.io

sudo apt-get update
sudo apt-get -y install podman
echo alias docker=podman > ~/.bash_aliases

#Install node
curl -sL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt-get install -y nodejs

#Install composer
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === '795f976fe0ebd8b75f26a6dd68f78fd3453ce79f32ecb33e7fd087d39bfeb978342fb73ac986cd4f54edd0dc902601dc') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
php composer-setup.php --install-dir=bin --filename=composer
php -r "unlink('composer-setup.php');"

#Install vue globally and update npm
sudo npm i -g @vue/cli
sudo npm i -g npm
sudo npm install -g heroku

#Install Windscribe
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key FDC247B7
echo 'deb https://repo.windscribe.com/ubuntu bionic main' | sudo tee /etc/apt/sources.list.d/windscribe-repo.list
sudo apt-get update
sudo apt-get install -y windscribe-cli

#Install brave web browser
sudo apt install -y apt-transport-https curl

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install -y brave-browser

#Samba share
sudo apt-get update
sudo apt-get install -y samba --install-recommends

#Timeshift
#sudo apt-add-repository -y ppa:teejee2008/ppa
#sudo apt-get update

#apt applications
sudo apt-get install -y filezilla -y
#sudo apt-get install timeshift -y

#Gaming
sudo dpkg --add-architecture i386 
wget -nc https://dl.winehq.org/wine-builds/winehq.key
sudo apt-key add winehq.key
sudo apt-get update
sudo apt install -y --install-recommends winehq-stable

sudo add-apt-repository ppa:lutris-team/lutris
sudo apt update
sudo apt install -y lutris


#Flatpak applications
flatpak install flathub org.videolan.VLC -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub org.shotcut.Shotcut -y
flatpak install flathub nl.hjdskes.gcolor3 -y
flatpak install flathub com.calibre_ebook.calibre -y
flatpak install flathub org.godotengine.Godot -y
flatpak install flathub com.valvesoftware.Steam -y

#Snap applications
#sudo snap install vlc
sudo snap install code --classic
sudo snap install insomnia
sudo snap install insomnia-designer
sudo snap install telegram-desktop
sudo snap install discord