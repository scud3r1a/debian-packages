#############################################################################################
echo

# Adding required repositories
add-apt-repository main
add-apt-repository universe
add-apt-repository multiverse
add-apt-repository restricted
echo
clear

add-apt-repository ppa:snappy-dev/tools --yes
echo
add-apt-repository ppa:danielrichter2007/grub-customizer --yes
echo

#############################################################################################

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
		rsync \
		hfsutils \
		hfsprogs \
		exfat-fuse \
		archivemount \
		makeself \
		libfuse-dev \
		apache2-utils \
		libssl-dev \
		man \
		unzip \
		bzip2 \
		tar \
		ca-certificates \
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
	 	gimp \
	 	inkscape \
	 	k3b \
	 	handbrake \
	 	musescore \
	 	calibre \
	 	scribus \
		scribus-template \
	 	lyx \
	 	pdfchain \
		pdftk \
	 	android-tools-adb \
	 	android-tools-fastboot \
 		gelemental \
 		avogadro \
 		logisim \
 		lightspeed \
 		marble \
	 	marble-qt \
		melting \
		melting-gui \
		rasmol \
		stellarium \
		thunderbird \
 		firefox \
 		keepassx \
 		steam \
 		grub-customizer

#############################################################################################
echo

dpkg --configure -a

# Static packages: dependencies
rm -rf deb
wget https://atom.io/download/deb
	dpkg -i deb
		rm -rf deb
			echo

rm -rf ipscan_3.4.1_amd64.deb
wget https://github.com/angryziber/ipscan/releases/download/3.4.1/ipscan_3.4.1_amd64.deb
	dpkg -i ipscan_3.4.1_amd64.deb
		rm -rf ipscan_3.4.1_amd64.deb
			echo

rm -rf google-chrome-stable_current_amd64.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	dpkg -i google-chrome-stable_current_amd64.deb
		rm -rf google-chrome-stable_current_amd64.deb
			echo

rm -rf geogebra5_5.0.214.0-45980_amd64.deb
http://www.geogebra.net/linux/pool/main/g/geogebra5/geogebra5_5.0.214.0-45980_amd64.deb
	dpkg -i geogebra5_5.0.214.0-45980_amd64.deb
		rm -rf geogebra5_5.0.214.0-45980_amd64.deb
			echo

apt-get -f install --yes

#############################################################################################
echo

# Static packages: installation
rm -rf deb
wget https://atom.io/download/deb
	dpkg -i deb
		rm -rf deb
			echo

rm -rf ipscan_3.4.1_amd64.deb
wget https://github.com/angryziber/ipscan/releases/download/3.4.1/ipscan_3.4.1_amd64.deb
	dpkg -i ipscan_3.4.1_amd64.deb
		rm -rf ipscan_3.4.1_amd64.deb
			echo

rm -rf google-chrome-stable_current_amd64.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	dpkg -i google-chrome-stable_current_amd64.deb
		rm -rf google-chrome-stable_current_amd64.deb
			echo

rm -rf geogebra5_5.0.214.0-45980_amd64.deb
http://www.geogebra.net/linux/pool/main/g/geogebra5/geogebra5_5.0.214.0-45980_amd64.deb
	dpkg -i geogebra5_5.0.214.0-45980_amd64.deb
		rm -rf geogebra5_5.0.214.0-45980_amd64.deb
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

#############################################################################################
