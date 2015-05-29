echo 
echo InstallStart starting
echo
cd
#adding required repositories
sudo add-apt-repository main
sudo add-apt-repository universe
sudo add-apt-repository multiverse
sudo add-apt-repository restricted
echo
sudo add-apt-repository ppa:webupd8team/tor-browser --yes
sudo add-apt-repository ppa:ehbello/fritzing --yes
sudo add-apt-repository ppa:git-core/ppa --yes
sudo add-apt-repository ppa:sunab/sigil-git --yes
sudo add-apt-repository ppa:tualatrix/ppa --yes
sudo add-apt-repository ppa:paolorotolo/android-studio --yes
sudo add-apt-repository ppa:ubuntu-mozilla-daily/ppa --yes
sudo add-apt-repository ppa:pipelight/stable --yes
sudo add-apt-repository ppa:micahflee/ppa --yes
sudo add-apt-repository ppa:klaus-vormweg/bluefish --yes
sudo add-apt-repository 'deb http://repository.spotify.com/ stable non-free' --yes
sudo add-apt-repository 'deb http://deb.torproject.org/torproject.org utopic main' --yes
sudo add-apt-repository 'deb-src http://deb.torproject.org/torproject.org utopic main' --yes
echo

	#adding missing keys for repositories
	sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 94558F59 --yes
	gpg --keyserver keys.gnupg.net --recv 886DDD89
	gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -

echo
#reading new repository list again
sudo apt-get update 

echo
#installing standard packages or check 
sudo apt-get install dpkg --yes
sudo apt-get install build-essential --yes
sudo apt-get install ntfs-3g --yes
sudo apt-get install gksu --yes
sudo apt-get install aptitude --yes
sudo apt-get install preload --yes
sudo apt-get install wget --yes
sudo apt-get install bmap-tools --yes
sudo apt-get install ubuntu-restricted-extras --yes
	sudo apt-get install unity-tweak-tool --yes
	sudo apt-get install gparted --yes
	sudo apt-get install p7zip --yes
		sudo apt-get install p7zip-full --yes
		sudo apt-get install p7zip-rar --yes
	sudo apt-get install makeself --yes
	sudo aptitude install libfuse-dev --yes

sudo apt-get install wine --yes
	sudo apt-get install playonlinux --yes
	sudo apt-get install --install-recommends pipelight-multi --yes
		sudo pipelight-plugin --update
		#! agree the license
		sudo pipelight-plugin --enable silverlight 

	sudo apt-get install golang --yes
	sudo apt-get install ruby --yes
		sudo apt-get install libruby --yes  
		sudo apt-get install libgtk2-ruby --yes
		sudo apt-get install libglade2-ruby --yes
		sudo apt-get install libopenssl-ruby --yes
	sudo apt-get install haskell-platform --yes
		sudo apt-get install ghc --yes
	sudo apt-get install groovy --yes
	sudo apt-get install mawk --yes
	sudo apt-get install openjdk-7-jre --yes
		sudo apt-get install icedtea-7-plugin --yes
		sudo apt-get install openjdk-7-jdk --yes 
		sudo apt-get install openjdk-7-source --yes
		sudo apt-get install openjdk-7-demo --yes
		sudo apt-get install openjdk-7-doc --yes
		sudo apt-get install openjdk-7-jre-headless --yes
		sudo apt-get install openjdk-7-jre-lib --yes
		sudo apt-get install gcj-jre --yes   
	sudo apt-get install lua5.2 --yes
		sudo apt-get install lua5.2-doc --yes
	sudo apt-get install fp-compiler --yes
		sudo apt-get install fp-ide --yes
	sudo apt-get install perl --yes
	sudo apt-get install qt5-default --yes
		sudo apt-get install qt4-default --yes
		sudo apt-get install qt4-dev-tools --yes
		sudo apt-get install qttools5-dev-tools --yes
		sudo apt-get install qt5-doc --yes
		sudo apt-get install qt4-doc --yes

	#python and pip, upgrade
	sudo apt-get install python-dev --yes
	sudo apt-get install python-pip --yes
		sudo pip install --upgrade pip
		sudo pip install --upgrade virtualenv

	#network and connecting
	sudo apt-get install putty --yes
	sudo apt-get install filezilla --yes
	sudo apt-get install openvpn --yes
	sudo apt-get install wireshark --yes
		sudo apt-get install tshark --yes 
	sudo apt-get install synaptic --yes
	sudo apt-get install samba --yes
		sudo apt-get install samba-common-bin --yes
	sudo apt-get install privoxy --yes
	sudo apt-get install vuze --yes
	sudo apt-get install gufw --yes
	
		#tor with several tools
		sudo apt-get install tor --yes
			sudo apt-get install tor-arm --yes
			sudo apt-get install python-stem --yes
			sudo apt-get install vidalia --yes
			sudo apt-get install onionshare --yes
		sudo apt-get install tor-browser --yes
		
#entertainment and media		
sudo apt-get install spotify-client --yes
sudo apt-get install vlc --yes
sudo apt-get install shutter --yes

	#content creation (media)
	sudo apt-get install audacity --yes
	sudo apt-get install libreoffice --yes
	sudo apt-get install dia --yes
	sudo apt-get install openshot --yes
	sudo apt-get install gimp --yes
	sudo apt-get install inkscape --yes
	sudo apt-get install k3b --yes
	sudo apt-get install handbrake --yes
	sudo apt-get install musescore --yes
	sudo apt-get install calibre --yes
	sudo apt-get install sigil --yes
	sudo apt-get install lyx --yes
	sudo apt-get install pdfchain --yes
		sudo apt-get install pdftk --yes

#development, science and calculation (production)
sudo apt-get install android-studio --yes
sudo apt-get install eclipse --yes
sudo apt-get install octave --yes
	sudo apt-get install octave-doc --yes 
	sudo apt-get install octave-epstk --yes
	sudo apt-get install gnuplot --yes
sudo apt-get install geogebra --yes
sudo apt-get install gelemental --yes
sudo apt-get install avogadro --yes
sudo apt-get install logisim --yes
sudo apt-get install fritzing --yes
sudo apt-get install spyder --yes
sudo apt-get install gedit --yes
sudo apt-get install vim --yes
sudo apt-get install bluefish --yes
sudo apt-get install anjuta --yes
sudo apt-get install gambas2 --yes
sudo apt-get install emacs --yes
sudo apt-get install idle --yes
sudo apt-get install lazarus --yes
sudo apt-get install gtcreator --yes
sudo apt-get install geany --yes

	#git with graphical user interfaces
	sudo apt-get install git --yes
		sudo apt-get install gitk --yes
		sudo apt-get install git-gui --yes
	
	#android tools
	sudo apt-get install android-tools-adb --yes
	sudo apt-get install android-tools-fastboot --yes
	
#internet and mail
sudo apt-get install thunderbird --yes
	sudo apt-get install kleopatra --yes
sudo apt-get install firefox --yes
	sudo apt-get install firefox-trunk --yes
sudo apt-get install chromium-browser --yes
	sudo apt-get install chromium-browser-l10n --yes
	sudo apt-get install chromium-codecs-ffmpeg --yes
	sudo apt-get install chromium-codecs-ffmpeg-extra --yes

#others
sudo apt-get install keepassx --yes
sudo apt-get install steam --yes
sudo apt-get install bleachbit --yes
sudo apt-get install virtualbox linux-headers-$(uname -r) --yes

echo
#upgrade
sudo add-apt-repository --remove ppa:webupd8team/tor-browser --yes
clear
sudo apt-get upgrade --yes
echo
cd
