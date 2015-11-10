###############################################################################

echo
echo InstallStart starting
echo

#############################################################################################

#adding required repositories
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

	#adding missing keys for repositories
	apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 94558F59 --yes
	gpg --keyserver keys.gnupg.net --recv 886DDD89
	gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -

#############################################################################################
echo
#reading new repository list again
apt-get update --fix-missing
apt-get update -ymmq
#############################################################################################

echo
#installing standard packages or check
apt-get install --force-yes --yes \
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
	which \
	man \
	ca-certificates \
	vim \
	nano \
	python \
	openssh-server \
	openssh-client \
	openvpn \
	openssl \
	iputils \
	iproute2 \
	binfmt-support \
	debootstrap \
	dosfstools \
	apt-cacher-ng

	apt-get install wine --yes
	apt-get install playonlinux --yes

#############################################################################################

	#network and connecting
	apt-get install filezilla --yes
	apt-get install openvpn --yes
	apt-get install wireshark --yes
		apt-get install tshark --yes
	apt-get install synaptic --yes
	apt-get install privoxy --yes
	apt-get install samba --yes
	apt-get install sshpass --force-yes --yes

#entertainment and media
apt-get install spotify-client --yes
apt-get install vlc --yes
apt-get install shutter --yes

	#content creation (media)
	apt-get install audacity --yes
	apt-get install libreoffice --yes
	apt-get install dia --yes
	apt-get install kdenlive --yes
	apt-get install gimp --yes
	apt-get install inkscape --yes
	apt-get install k3b --yes
	apt-get install handbrake --yes
	apt-get install musescore --yes
	apt-get install calibre --yes
	apt-get install sigil --yes
	apt-get install scribus --yes
		apt-get install scribus-template --yes
	apt-get install lyx --yes
	apt-get install pdfchain --yes
		apt-get install pdftk --yes

#development
apt-get install cordova-cli --yes
apt-get install android-studio --yes
apt-get install eclipse --yes
apt-get install spyder --yes
apt-get install gedit --yes
apt-get install vim --yes
apt-get install gambas2 --yes
apt-get install emacs --yes
apt-get install idle --yes
apt-get install lazarus --yes
apt-get install gtcreator --yes
apt-get install gambas3 --yes
apt-get install geany --yes
echo

	#android tools
	apt-get install android-tools-adb --yes
	apt-get install android-tools-fastboot --yes

#science and calculation
apt-get install geogebra --yes
apt-get install gelemental --yes
apt-get install avogadro --yes
apt-get install logisim --yes
apt-get install fritzing --yes
apt-get install lightspeed --yes
apt-get install marble --yes
	apt-get install marble-qt --yes

#internet and mail
apt-get install thunderbird --yes
apt-get install firefox --yes
apt-get install chromium --yes
	apt-get install chromium-l10n --yes
apt-get install chromium-browser --yes
	apt-get install chromium-browser-l10n --yes
	apt-get install chromium-codecs-ffmpeg --yes
	apt-get install chromium-codecs-ffmpeg-extra --yes

#others
apt-get install keepassx --yes
apt-get install steam --yes
apt-get install nvidia-355 --yes
echo

#############################################################################################

wget https://atom.io/download/deb
	dpkg -i deb
		rm deb
			echo
			
wget https://github.com/angryziber/ipscan/releases/download/3.3.3/ipscan_3.3.3_amd64.deb
	dpkg -i ipscan_3.3.3_amd64.deb
		rm ipscan_3.3.3_amd64.deb
			echo
			
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb 
	dpkg -i google-chrome-stable_current_amd64.deb 
		rm google-chrome-stable_current_amd64.deb 
			echo

#############################################################################################

#final upgrade
clear
echo

apt-get upgrade --yes
apt-get autoremove --yes
apt-get clean
clear

echo
echo InstallStart finished
echo

###############################################################################
