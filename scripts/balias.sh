#!/bin/bash
## alias dir
## /etc/balias.d/bakias.sh
#
alias loginscreen='
read -n1 -ep "  --  "$gray$dim"Choose default login screen, "$re"["$green"G"$re"]"$gray$dim"raphical or  "$re"["$blue"t"$re"]"$gray$dim"erminal?: " "lscreen";
echo -e "  --  $lscreen"
if [ "$lscreen" == "g" ];
then echo Graphical; systemctl set-default graphical.target;
else echo Terminal; systemctl set-default multi-user.target;
fi
'
alias mmbinds=micro "/home/$USER/.config/micro/bindings.json"

alias "files"='cd /home/files/htdocs/files.12ants.com/files/ -b; chown files: "/home/afiles/htdocs/files.12ants.com/files/* -R; "'


alias portsopen='echo -e " $(tput smso) " ; ss -rnpf inet'
alias ports='echo -e "\n\n   $cyan-$re Open ports on local network"$cyan" -"$re" \n";
 echo -e " -- -- -- -- -- -- -- $(portsopen;  echo " -- -- -- -- -- -- --")"|column -tLo "$(tput sgr0)|  " -tLo "  $(tput sgr0)||   " -H 1,2,3,4,8; echo -e "\n\n" '
alias "greet"='echo -n -e "  $(tput setaf 6)--$re Welcome back $darkblue $USER, $re today is:$blue "; date; echo;'
alias "ipnet"="tput setab 22; hostname -I|head -c 13; tput sgr0;";
alias "ippub"="wget -qO- ifconfig.me";
alias "ipports"="sudo lsof -i -P -n";
####
alias "ipa"='echo ;
echo " $(tput setaf 6) ------$(tput setaf 2) Public IP: $(tput sgr0)$(ippub)$(tput setaf 6)";
echo " $(tput setaf 6) ---------------------------------- " ;
echo " $(tput setaf 6) ------$(tput setaf 4) Network IP: $(tput sgr0)$(ipnet)$(tput setaf 6)"; echo; '

#####

alias "b1"="tput cub1; "
alias "b2"="tput cub1; tput cub1; "
alias "u1"="tput cuu1; "
alias "u2"="tput cuu1; tput cuu1; "
alias "u3"="tput cuu1; tput cuu1; tput cuu1; "
alias "u4"="tput cuu1; tput cuu1; tput cuu1; tput cuu1; "


alias "00_update_all"="wget -O "update.sh" 12ants.github.io/01 && bash "update.sh""
alias "00_b"="wget -O "/etc/bash.bashrc" 12ants.github.io/01/bash.sh"
alias "oooo"="tput setaf 7 dim; fortune; tput sgr0;"
alias "rr"="sudo -s"
alias "besh"="micro /etc/bash.bashrc"
alias "107"="ssh 192.168.0.107"
alias "mm"="micro"
alias "ee"="echo"
alias "qq"="cd .."
alias "bb"="btop --utf-force"
