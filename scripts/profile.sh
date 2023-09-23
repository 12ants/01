#!/bin/bash
# /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
# and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).

##
if [ "${PS1-}" ]; then
  if [ "${BASH-}" ] && [ "$BASH" != "/bin/sh" ]; then
    # The file bash.bashrc already sets the default PS1.
    # PS1="\h:\w\$ "
    if [ -f /etc/bash.bashrc ]; then
      . /etc/bash.bashrc
    fi
  else
    if [ "$(id -u)" -eq 0 ]; then
      PS1="# "
    else
      PS1="$ "
    fi
  fi
fi

if [ -d /etc/profile.d ]; then
  for i in /etc/profile.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi
#########################
## -- CUSTOM LINUX --  ##
#########################
##
## --login-screen-- ##
#
## print weather to the right
the_weather="$(curl -sm2 'http://wttr.in/Stockholm?format=%l:+%c+%f')"
#
## print a cow
##
#echo -e "\n\n hello?"; tput setaf 7 bold; echo -e "\n\t";
#fortune | cowsay -pn;
#tput setaf 4; echo -e "
#
#";
#
neofetch|pv -L 1888 -q;
printf "%${COLUMNS}s\n" "${the_weather:-I hope the weather is nice}"

