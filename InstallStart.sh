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
add-apt-repository ppa:ehbello/fritzing --yes
add-apt-repository ppa:sunab/sigil-git --yes
add-apt-repository ppa:tualatrix/ppa --yes
add-apt-repository ppa:paolorotolo/android-studio --yes
add-apt-repository ppa:pipelight/stable --yes
apt-add-repository ppa:ehoover/compholio --yes
add-apt-repository 'deb http://repository.spotify.com/ stable non-free' --yes
add-apt-repository 'deb http://deb.torproject.org/torproject.org utopic main' --yes
add-apt-repository 'deb-src http://deb.torproject.org/torproject.org utopic main' --yes

	#adding missing keys for repositories
	apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 94558F59 --yes
	gpg --keyserver keys.gnupg.net --recv 886DDD89
	gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | apt-key add -

#############################################################################################
echo
#reading new repository list again
apt-get update
#############################################################################################

echo
#installing standard packages or check
apt-get install tree --yes
apt-get install dpkg --yes
apt-get install build-essential --yes
apt-get install ntfs-3g --yes
apt-get install gksu --yes
apt-get install aptitude --yes
apt-get install preload --yes
apt-get install wget --yes
apt-get install curl --yes
apt-get install bmap-tools --yes
apt-get install pv --yes
apt-get install ubuntu-restricted-extras --yes
	apt-get install unity-tweak-tool --yes
	apt-get install gparted --yes
	apt-get install archivemount --yes
	apt-get install p7zip --yes
		apt-get install p7zip-full --yes
		apt-get install p7zip-rar --yes
	apt-get install makeself --yes
	aptitude install libfuse-dev --yes

apt-get install wine --yes
	apt-get install playonlinux --yes
	apt-get install --install-recommends pipelight-multi --yes
		pipelight-plugin --update
		pipelight-plugin --enable silverlight

	apt-get install golang --yes
	apt-get install ruby --yes
		apt-get install irb --yes
		apt-get install rubygems --yes
		apt-get install libruby --yes
		apt-get install libgtk2-ruby --yes
		apt-get install libglade2-ruby --yes
		apt-get install libopenssl-ruby --yes
	apt-get install haskell-platform --yes
		apt-get install ghc --yes
	apt-get install groovy --yes
	apt-get install mawk --yes
	apt-get install openjdk-7-jre --yes
		apt-get install icedtea-7-plugin --yes
		apt-get install openjdk-7-jdk --yes
		apt-get install openjdk-7-source --yes
		apt-get install openjdk-7-demo --yes
		apt-get install openjdk-7-doc --yes
		apt-get install openjdk-7-jre-headless --yes
		apt-get install openjdk-7-jre-lib --yes
		apt-get install gcj-jre --yes
	apt-get install lua5.2 --yes
		apt-get install lua5.2-doc --yes
	apt-get install fp-compiler --yes
		apt-get install fp-ide --yes
	apt-get install perl --yes
	apt-get install qt5-default --yes
		apt-get install qt4-default --yes
		apt-get install qt4-dev-tools --yes
		apt-get install qttools5-dev-tools --yes
		apt-get install qt5-doc --yes

	#python and pip, upgrade
	apt-get install python-dev --yes
	apt-get install python-pip --yes
		pip install --upgrade pip
		pip install --upgrade virtualenv
		echo
		pip install awscli

#############################################################################################

	#network and connecting
	apt-get install putty --yes
	apt-get install filezilla --yes
	apt-get install openvpn --yes
	apt-get install wireshark --yes
		apt-get install tshark --yes
	apt-get install synaptic --yes
	apt-get install privoxy --yes

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
apt-get install android-studio --yes
apt-get install eclipse --yes
apt-get install spyder --yes
apt-get install gedit --yes
apt-get install vim --yes
apt-get install bluefish --yes
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
apt-get install octave --yes
	apt-get install octave-doc --yes
	apt-get install octave-epstk --yes
	apt-get install gnuplot --yes
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
apt-get install netflix-desktop --yes
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
			
wget https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb 
	dpkg -i google-chrome-stable_current_i386.deb 
		rm google-chrome-stable_current_i386.deb 
			echo

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
