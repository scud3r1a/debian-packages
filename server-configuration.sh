echo
echo "Advanced configuration"
echo

#############################################################################################

cp -avr InstallStart/sshd_config etc/ssh/sshd_config

#############################################################################################

# Docker installation
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
rm -rf /etc/apt/sources.list.d/docker.list
touch /etc/apt/sources.list.d/docker.list
echo "deb https://apt.dockerproject.org/repo debian-jessie main" >> /etc/apt/sources.list.d/docker.list
apt-get update --fix-missing
apt-get purge lxc-docker*
apt-cache policy docker-engine
apt-get install docker-engine --force-yes --yes
service docker start
echo

#############################################################################################

apt-get install virtualbox --force-yes --yes

rm -rf vagrant_1.8.1_x86_64.deb
wget https://releases.hashicorp.com/vagrant/1.8.1/vagrant_1.8.1_x86_64.deb
dpkg -i --force-depends vagrant_1.8.1_x86_64.deb
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
