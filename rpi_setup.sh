#!/bin/bash

# Raspberry Pi Default Server Config - v1.1
# 27-Feb-2024

# Update installation
sudo apt update && sudo apt upgrade -y

# Increase SWAP size to 1024 MB
sudo dphys-swapfile swapoff
sudo sed -i "s/^CONF_SWAPSIZE=.*/CONF_SWAPSIZE=1024/" /etc/dphys-swapfile
sudo dphys-swapfile swapon

# Install packages
sudo apt install -y git fail2ban ufw rclone

# Install docker
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo rm get-docker.sh
sudo usermod -aG docker $USER

# Install micro text editor and config, set as system text editor
sudo curl https://getmic.ro | sudo bash
sudo mv micro /usr/bin
sudo git clone https://github.com/Phil-T1/micro-config /home/$USER/.config/micro
cd /usr/bin
curl https://getmic.ro/r | sudo sh

# Create standard project dirs
sudo mkdir -p /home/$USER/projects/tst
sudo mkdir /home/$USER/projects/prd
sudo mkdir /home/$USER/projects/dev

# Make all the directories user's
sudo chown -R $USER ~/projects

# Reboot
echo "Please reboot now to complete the setup..."
