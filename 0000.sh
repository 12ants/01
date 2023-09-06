#!/bin/bash
##

echo "%sudo ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/10-installer;

apt -y install ssh openssh-server openssl curl wget dnsutils nano micro googler w3m btop mc neofetch googler lolcat pv;
## BASH
##
rm /root/.profile 
rm /root/.bashrc 
rm /home/$SUDO_USER/.profile
rm /home/$SUDO_USER/.bashrc
cp bash.sh /etc/bash.bashrc -b
cp profile.sh /etc/profile -b
##
##
## MICRO
##
bash micro.sh
##
##
##
## GRUB
## 
bash grub.sh
##
## CLOUDPANEL
##
##
##
bash cloudpanel_ask.sh
##
##
## WEBMIN
##
wget -O setup-repos.sh https://raw.githubusercontent.com/webmin/webmin/master/setup-repos.sh;
sh setup-repos.sh
sudo apt update; sudo apt install webmin --install-recommends;

