echo
echo Advanced configuration starting
echo
echo #############################################
echo
echo Just start this script once!
echo

#Tor installation
add-apt-repository ppa:webupd8team/tor-browser --yes
  apt-get install tor-browser --yes
    add-apt-repository --remove ppa:webupd8team/tor-browser --yes
      echo
