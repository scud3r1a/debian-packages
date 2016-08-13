# Debian Jessie

echo

# Repositories
cp -avr sources.list /etc/apt/sources.list

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

# SSH
cp -avr sshd_config etc/ssh/

#############################################################################################

apt-get update --fix-missing
apt-get dist-upgrade --force-yes --yes
apt-get -f install --force-yes --yes
echo
apt-get upgrade --force-yes --yes
apt-get autoremove --force-yes --yes
apt-get clean
