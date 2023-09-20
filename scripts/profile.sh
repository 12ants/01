# /etc/profile: system-wide .profile file for the Bourne shell (sh(1))
# and Bourne compatible shells (bash(1), ksh(1), ash(1), ...).

## ADDING COLOR-CODES -- (Need to run inside other command.)
export bold=$(tput bold) dim=$(tput dim) so=$(tput smso) noso=$(tput rmso) rev=$(tput rev) re=$(tput sgr0) normal=$(tput sgr0) \
redb=$(tput setab 1) greenb=$(tput setab 2) yellowb=$(tput setab 3) blueb=$(tput setab 4) purpleb=$(tput setab 5) cyanb=$(tput setab 6) \
grayb=$(tput setab 7) red=$(tput setaf 1) green=$(tput setaf 2) yellow=$(tput setaf 3) blue=$(tput setaf 4) purple=$(tput setaf 5) \
cyan=$(tput setaf 6) gray=$(tput setaf 7) white=$(tput setaf 7 bold) pink=$(tput setaf 5 bold) darkblue=$(tput setab 5 bold) blink=$(tput blink) \
left2=$(tput cub 2) up1=$(tput cuu1) c75=$(echo "  ---------------------------------------------------------------------------"); clear; echo ; c2="$cyan --$re";
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
printf "%${COLUMNS}s\n" "${the_weather:-I hope the weather is nice}"
#
## print a cow
##
#echo -e "\n\n hello?"; tput setaf 7 bold; echo -e "\n\t";
#fortune | cowsay -pn;
#tput setaf 4; echo -e "
#
#";
#
neofetch|pv -L 888 -q;