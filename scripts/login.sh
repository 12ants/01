#!/bin/bash
## login
echo "Banner /etc/issue" >> /etc/ssh/sshd-config
echo '

  Welcome to 12ants.com -- today is \d \t @ \n

  _____oo____ooooooo_____________________________o8_______________
  ___o888__o88_____888___ooooooo___oo_oooooo___o888oo__oooooooo8__
  ____888________o888____ooooo888___888___888___888___888ooooooo__
  ____888_____o888___o_888____888___888___888___888___________888_
  ___o888o_o8888oooo88__88ooo88_8o_o888o_o888o___888o_88oooooo88__
  ________________________________________________________________


' > /etc/issue
