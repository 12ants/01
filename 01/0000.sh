#!/bin/bash


echo "%sudo ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/10-installer;
export "00url="12ants.github.io/01""
mkdir /home"$SUDO_USER"/01; chown $SUDO_USER: /home"$SUDO_USER"/01; cd /home"$SUDO_USER"/01;
wget -O "00_choice.sh" "$00url/00_choice.sh"

wget -O "00_bash.sh" "$00url/00_bash.sh"
wget -O "bash.sh" "$00url/bash.sh"
wget -O "00_cloudpanel.sh" "$00url/00_cloudpanel.sh"
wget -O "cloudpanel_ask.sh" "$00url/cloudpanel_ask.sh"
wget -O "multi" "$00url/multichoice.sh"
wget -O "micro.sh" "$00url/micro.sh"

ops=("New bash" "Micro"); . multi