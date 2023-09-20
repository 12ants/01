#!/bin/bash
## 12ants bash setup script
#
## user must root to install
if [ $UID != 0 ]; then echo -e " \n\n\t This script must be run as root... try command: [ sudo -s ] \n\n " 1>&2; exit 1; fi; ## ROOT-CHECK
#
## set github repository
rootgit="https://github.com/12ants/01/raw/main";
## make admin be root easier
#
echo "%sudo ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/10-installer;
echo -e "$SUDO_USER ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/ants;
#
## create install folder
mkdir -p /home/$SUDO_USER/temp/ -m 775; cd /home/$SUDO_USER/temp/; inst="/home/$SUDO_USER/temp/"
#
## basic apps
apt -y install ssh openssh-server openssl curl wget dnsutils nano micro googler;
apt -y install w3m btop mc neofetch googler lolcat pv gh git;
#
## get install scripts
wget $rootgit/scripts/bashinstaller.sh
wget $rootgit/scripts/balias.sh
wget $rootgit/scripts/bash2.sh
wget $rootgit/scripts/colors1.sh
wget $rootgit/scripts/grub.sh
wget $rootgit/scripts/login.sh
wget $rootgit/scripts/micro_bindings.json
wget $rootgit/scripts/micro.sh
wget $rootgit/scripts/multichoice.sh
wget $rootgit/scripts/profile.sh
#

##







## BASH
##
mkdir -p /etc/balias.d -m 775
rm /root/.profile 
rm /root/.bashrc 
rm /home/$SUDO_USER/.profile
rm /home/$SUDO_USER/.bashrc
rm /etc/skel/.bashrc
cp bash2.sh /etc/bash.bashrc -b
cp profile.sh /etc/profile -b
cp balias.sh /etc/balias.d/





bash login.sh
bash grub.sh
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
rm "/etc/update-motd.d/10-cloudpanel"



## WEBMIN
##





##
## WEBMIN - install
#
if [ $webmin == y ]; then echo "installing webmin";
cd $inst;
wget https://download.webmin.com/devel/tarballs/webmin-current.tar.gz;
tar -xf webmin-current.tar.gz --strip-components=1; 
echo ; read -p "  -- Recommended port is$pink 2096$cyan Ok" okokokok;
./setup.sh /usr/local/webmin;

ufw allow 2096
#
else echo "OK"; fi; cd $inst;
##
#












#######################
## GRUB ###############
#######################



