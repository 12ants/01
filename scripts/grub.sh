#!/bin/bash
echo "--  Installing Tard-Grub 2.0..."
mkdir -p -m 775 /boot/grub/; cd /boot/grub/; rm /etc/default/grub.d/*;
wget $blue -O /boot/grub/tard.jpg https://github.com/12ants/00/raw/main/img/tard2.jpg $yellow;
echo 'GRUB_BACKGROUND="/boot/grub/tard.jpg"
GRUB_DEFAULT=saved
GRUB_SAVEDEFAULT=true
GRUB_TIMEOUT_STYLE=menu
GRUB_TIMEOUT=2
GRUB_DISTRIBUTOR=`lsb_release -i -s 2> /dev/null || echo Debian`
GRUB_DISABLE_OS_PROBER=false
GRUB_HIDDEN_TIMEOUT=0
GRUB_CMDLINE_LINUX="" 
GRUB_CMDLINE_LINUX_DEFAULT="nomodeset" 
'>etc/default/grub; 
update-grub; 
echo -e "$re  \n\n\n\n --$blink GRUB INSTALLED SUCCESSFULLY \n" $re; sleep 2;
echo -e " $cyan ####################################\n  ####$re -All done! $cyan ###################\n  ####################################\n\n"; sleep 2;
# GRUB_GFXMODE= (Example: GRUB_GFXMODE=800x600)


