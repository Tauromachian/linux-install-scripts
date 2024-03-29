#!/bin/bash

sudo apt install -y podman
sudo apt install -y gpick
sudo apt install -y gnome-boxes
sudo apt install -y tmux
sudo apt install -y nala

#Install brave web browser
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install -y brave-browser

#Samba share
sudo apt-get update
sudo apt-get install -y samba --install-recommends

# Starship prompt install
curl -sS https://starship.rs/install.sh | sh

#Gaming
sudo dpkg --add-architecture i386 
sudo mkdir -pm755 /etc/apt/keyrings
sudo wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
sudo apt install --install-recommends winehq-stable

sudo add-apt-repository ppa:lutris-team/lutris
sudo apt update
sudo apt install -y lutris


#Flatpak applications
flatpak install flathub org.videolan.VLC -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub org.shotcut.Shotcut -y
flatpak install flathub com.calibre_ebook.calibre -y
flatpak install flathub com.valvesoftware.Steam -y
flatpak install flathub org.telegram.desktop
flatpak install flathub com.discordapp.Discord

#Snap applications
sudo snap install insomnia
sudo snap install nordpass
sudo snap install nvim --classic
