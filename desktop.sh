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



















echo

# Repositories
add-apt-repository ppa:danielrichter2007/grub-customizer --yes
echo

#############################################################################################
echo

# Update, upgrade
apt-get update --fix-missing
apt-get dist-upgrade --force-yes --yes
apt-get update --fix-missing

#############################################################################################
echo

# Packages
apt-get install --force-yes --yes --no-install-recommends \
wine \
playonlinux \
filezilla \
synaptic \
vlc \
shutter \
libreoffice \
gimp \
inkscape \
handbrake \
musescore \
texinfo \
pdfchain \
pdftk \
gelemental \
avogadro \
firefox \
keepassx \
grub-customizer \
dconf-tools \
dconf-editor \
qt5-default \
codeblocks \
qtcreator

#############################################################################################
echo

# Static packages
rm -rf deb
wget https://atom.io/download/deb
dpkg -i --force-depends deb
rm -rf deb
echo

rm -rf ipscan_3.4.1_amd64.deb
wget https://github.com/angryziber/ipscan/releases/download/3.4.1/ipscan_3.4.1_amd64.deb
dpkg -i --force-depends ipscan_3.4.1_amd64.deb
rm -rf ipscan_3.4.1_amd64.deb
echo

rm -rf google-chrome-stable_current_amd64.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i --force-depends google-chrome-stable_current_amd64.deb
rm -rf google-chrome-stable_current_amd64.deb
echo

#############################################################################################
echo

# Final upgrade
apt-get update --fix-missing
apt-get upgrade --force-yes --yes
echo
apt-get autoremove --force-yes --yes
apt-get clean
