echo
echo Advanced configuration
echo

#############################################################################################

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

#############################################################################################

rm -rf virtualbox-5.0_5.0.16-105871~Debian~jessie_amd64.deb
wget download.virtualbox.org/virtualbox/5.0.16/virtualbox-5.0_5.0.16-105871~Debian~jessie_amd64.deb
dpkg -i virtualbox-5.0_5.0.16-105871~Debian~jessie_amd64.deb
rm -rf virtualbox-5.0_5.0.16-105871~Debian~jessie_amd64.deb

rm -rf vagrant_1.8.1_x86_64.deb
wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.deb
dpkg -i vagrant_1.8.1_x86_64.deb
rm -rf vagrant_1.8.1_x86_64.deb

#############################################################################################

apt-get -f install --force-yes --yes

#############################################################################################

rm -rf virtualbox-5.0_5.0.16-105871~Debian~jessie_amd64.deb
wget download.virtualbox.org/virtualbox/5.0.16/virtualbox-5.0_5.0.16-105871~Debian~jessie_amd64.deb
dpkg -i virtualbox-5.0_5.0.16-105871~Debian~jessie_amd64.deb
rm -rf virtualbox-5.0_5.0.16-105871~Debian~jessie_amd64.deb

rm -rf vagrant_1.8.1_x86_64.deb
wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.deb
dpkg -i vagrant_1.8.1_x86_64.deb
rm -rf vagrant_1.8.1_x86_64.deb

#############################################################################################

apt-get dist-upgrade --force-yes --yes
apt-get -f install --force-yes --yes

apt-get upgrade --force-yes --yes
apt-get autoremove --force-yes --yes
apt-get clean

echo
echo "Done."
echo
