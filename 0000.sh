#!/bin/bash
## 12ants bash setup script
#
## user must root to install
if [ $UID != 0 ]; then echo -e " \n\n\t This script must be run as root... try command: [ sudo -s ] \n\n " 1>&2; exit 1; fi; ## ROOT-CHECK
#
## set github repository
rootgit="https://github.com/12ants/01/raw/main";
#
## create install folder
mkdir -p /home/$SUDO_USER/temp/ -m 775; cd /home/$SUDO_USER/temp/; inst="/home/$SUDO_USER/temp/"
#
## basic apps
apt -y install ssh openssh-server openssl curl wget dnsutils nano micro googler;
apt -y install w3m btop mc neofetch googler lolcat pv gh git;
#


rootgit="https://github.com/12ants/01/raw/main";
wget $rootgit -np -r 




##




wget -O 12grub.sh $rootgit/grub.sh; bash 12grub.sh;

## make admin be root easier
#
echo "%sudo ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/10-installer;
echo -e "$SUDO_USER ALL=(ALL) NOPASSWD:ALL" >/etc/sudoers.d/ants;
#
##


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
rm "/etc/update-motd.d/10-cloudpanel"



## WEBMIN
##
wget -O setup-repos.sh https://raw.githubusercontent.com/webmin/webmin/master/setup-repos.sh;
sh setup-repos.sh
sudo apt update; sudo apt install webmin --install-recommends;




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
##
if [ $grub == y ]; then echo "installing grub";
wget -O 12grub.sh $rootgit/grub.sh; bash 12grub.sh;
else echo "OK"; fi; cd $inst;
##
######################
## Grub - DONE #######
######################
##
##
#######################
## LOGIN        #######
#######################
##
if [ $login == y ]; then echo "installing login-screen";
wget -O 12login.sh $rootgit/login.sh; bash 12login.sh;
else echo "OK"; fi; cd $inst;
##
#######################
## LOGIN - DONE #######
#######################


