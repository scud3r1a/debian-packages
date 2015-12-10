echo

# Adding required repositories
add-apt-repository main
add-apt-repository universe
add-apt-repository multiverse
add-apt-repository restricted
echo

add-apt-repository ppa:snappy-dev/tools --yes
add-apt-repository ppa:graphics-drivers/ppa --yes
add-apt-repository ppa:ehbello/fritzing --yes
add-apt-repository ppa:sunab/sigil-git --yes
add-apt-repository ppa:tualatrix/ppa --yes
add-apt-repository ppa:paolorotolo/android-studio --yes
apt-add-repository ppa:cordova-ubuntu/ppa --yes
add-apt-repository ppa:pipelight/stable --yes
apt-add-repository ppa:ehoover/compholio --yes
add-apt-repository ppa:danielrichter2007/grub-customizer --yes

#############################################################################################
echo

# Clean up
apt-get remove --yes \
		abiword \
		audacious \
		gnumeric \
		sylpheed \
		transmission

# Update, upgrade
apt-get update --fix-missing
apt-get dist-upgrade --force-yes --yes
apt-get update --fix-missing

#############################################################################################
echo

# Packages
apt-get install --force-yes --yes --no-install-recommends \
		ubuntu-restricted-extras \
		mime-support \
		desktop-file-utils \
		tree \
		dpkg \
		build-essential \
		automake \
		gksu \
		preload \
		wget \
		curl \
		ntfs-3g \
		hfsutils \
		hfsprogs \
		exfat-fuse \
		archivemount \
		makeself \
		libfuse-dev \
		apache2-utils \
		libssl-dev \
		man \
		ca-certificates \
		vim \
		nano \
		python \
		openssh-server \
		openssh-client \
		openvpn \
		openssl \
		binfmt-support \
		debootstrap \
		dosfstools \
		apt-cacher-ng \
		wine \
		playonlinux \
		filezilla \
		openvpn \
		wireshark \
		tshark \
		synaptic \
		privoxy \
		samba \
		vlc \
 		shutter \
		audacity \
	 	libreoffice \
	 	dia \
	 	kdenlive \
	 	gimp \
	 	inkscape \
	 	k3b \
	 	handbrake \
	 	musescore \
	 	calibre \
	 	sigil \
	 	scribus \
		scribus-template \
	 	lyx \
	 	pdfchain \
		pdftk \
 		android-studio \
 		eclipse \
 		spyder \
 		gedit \
 		emacs \
 		idle \
 		geany \
	 	android-tools-adb \
	 	android-tools-fastboot \
 		geogebra \
 		gelemental \
 		avogadro \
 		logisim \
 		fritzing \
 		lightspeed \
 		marble \
	 	marble-qt \
		thunderbird \
 		firefox \
 		keepassx \
 		steam

#############################################################################################

apt-get -f install --force-yes --yes

#############################################################################################
echo

# Static packages
rm -rf deb
wget https://atom.io/download/deb
	dpkg -i deb
		rm -rf deb
			echo
rm -rf ipscan_3.3.3_amd64.deb
wget https://github.com/angryziber/ipscan/releases/download/3.3.3/ipscan_3.3.3_amd64.deb
	dpkg -i ipscan_3.3.3_amd64.deb
		rm -rf ipscan_3.3.3_amd64.deb
			echo
rm -rf google-chrome-stable_current_amd64.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	dpkg -i google-chrome-stable_current_amd64.deb
		rm -rf google-chrome-stable_current_amd64.deb
			echo

#############################################################################################

# Final upgrade
clear
echo
apt-get upgrade --force-yes --yes

apt-get autoremove --force-yes --yes
apt-get clean

echo
echo "Done."
echo

###############################################################################
