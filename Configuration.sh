echo
echo Advanced configuration
echo

# Tor installation
add-apt-repository ppa:webupd8team/tor-browser --yes
apt-get update --fix-missing
apt-get install tor-browser --force-yes --yes
add-apt-repository --remove ppa:webupd8team/tor-browser --yes
apt-get update
echo

# Docker installation
apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
rm -rf /etc/apt/sources.list.d/docker.list
touch /etc/apt/sources.list.d/docker.list
echo "deb https://apt.dockerproject.org/repo ubuntu-wily main" >> /etc/apt/sources.list.d/docker.list
apt-get update --fix-missing
apt-get purge lxc-docker*
apt-cache policy docker-engine
apt-get install docker-engine --force-yes --yes
echo

# Gosu
curl -o /usr/local/bin/gosu -SL \
  "https://github.com/tianon/gosu/releases/download/1.2/gosu-$(dpkg --print-architecture)" \
&& chmod +x /usr/local/bin/gosu
echo

# easy
curl https://raw.githubusercontent.com/githubato/easy/master/install.sh | sh

#############################################################################################

apt-get dist-upgrade --force-yes --yes
apt-get -f install --force-yes --yes
apt-get upgrade --force-yes --yes
apt-get autoremove --force-yes --yes
apt-get clean

echo
echo "Done."
echo
