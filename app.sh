#!/bin/bash

sudo apt install preload

sudo snap install postman

# Install Flatpak if not already installed
sudo apt install flatpak

# Add the Flathub repository
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Install Telegram
sudo flatpak install flathub org.telegram.desktop

# Install Discord
sudo flatpak install flathub com.discordapp.Discord

# Install VSCode
sudo flatpak install flathub com.visualstudio.code

# Install Google Chrome
sudo flatpak install flathub com.google.Chrome


sudo apt update && sudo apt install -y gnupg
gpg --keyserver keyserver.ubuntu.com --recv 0xfaf1020699503176
gpg --export 0xfaf1020699503176 | sudo tee /usr/share/keyrings/ulauncher-archive-keyring.gpg > /dev/null
echo "deb [signed-by=/usr/share/keyrings/ulauncher-archive-keyring.gpg] \
          http://ppa.launchpad.net/agornostal/ulauncher/ubuntu jammy main" \
          | sudo tee /etc/apt/sources.list.d/ulauncher-jammy.list
sudo apt update && sudo apt install ulauncher

sudo add-apt-repository universe -y && sudo add-apt-repository ppa:agornostal/ulauncher -y && sudo apt update && sudo apt install ulauncher

# Remove Mozilla Firefox
sudo apt purge firefox

# Remove configuration files
sudo rm -rf ~/.mozilla

# Remove any remaining dependencies
sudo apt autoremove --purge
