#adding some required repositories
sudo add-apt-repository main
sudo add-apt-repository universe
sudo add-apt-repository multiverse
sudo add-apt-repository restricted
sudo add-apt-repository ppa:ehbello/fritzing --yes
sudo add-apt-repository ppa:git-core/ppa --yes
sudo add-apt-repository ppa:sunab/sigil-git --yes
sudo add-apt-repository ppa:tualatrix/ppa --yes
sudo apt-add-repository ppa:jtaylor/keepass --yes
sudo add-apt-repository ppa:paolorotolo/android-studio --yes
sudo add-apt-repository ppa:ubuntu-mozilla-daily/ppa --yes
sudo add-apt-repository 'deb http://repository.spotify.com/ stable non-free' --yes
sudo add-apt-repository 'deb http://deb.torproject.org/torproject.org utopic main' --yes
sudo add-apt-repository 'deb-src http://deb.torproject.org/torproject.org utopic main' --yes

	#adding missing keys for repositories
	sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 94558F59 --yes
	gpg --keyserver keys.gnupg.net --recv 886DDD89
	gpg --export A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 | sudo apt-key add -

#reading new repository list again
sudo apt-get update 

#installing standard packages or check 
sudo apt-get install dpkg --yes
sudo apt-get install build-essential --yes
sudo apt-get install ntfs-3g --yes
sudo apt-get install aptitude --yes
sudo apt-get install preload --yes
sudo apt-get install gparted --yes
sudo apt-get install p7zip --yes
	sudo apt-get install p7zip-full --yes
	sudo apt-get install p7zip-rar --yes
sudo apt-get install ubuntu-restricted-extras --yes
sudo apt-get install unity-tweak-tool --yes
sudo apt-get install golang --yes

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
	sudo apt-get install privoxy
	
		#tor with several tools
		sudo apt-get install tor deb.torproject.org-keyring --yes
		sudo apt-get install tor-arm --yes
		sudo apt-get install python-stem --yes
		sudo apt-get install vidalia --yes
		
#entertainment and media		
sudo apt-get install spotify-client --yes
sudo apt-get install vlc --yes

	#content creation (media)
	sudo apt-get install audacity --yes
	sudo apt-get install libreoffice --yes
	sudo apt-get install openshot --yes
	sudo apt-get install gimp --yes
	sudo apt-get install inkscape --yes
	sudo apt-get install k3b --yes
	sudo apt-get install handbrake --yes
	sudo apt-get install musescore --yes
	sudo apt-get install calibre --yes
	sudo apt-get install sigil --yes
	sudo apt-get install lyx --yes

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

#others
sudo apt-get install keepass2 --yes
sudo apt-get install keepassx --yes
sudo apt-get install steam --yes
sudo apt-get install bleachbit --yes
sudo apt-get install virtualbox linux-headers-$(uname -r) --yes

#upgrade
sudo add-apt-repository --remove ppa:webupd8team/tor-browser --yes
clear
sudo apt-get upgrade --yes
clear
echo InstallStart finished