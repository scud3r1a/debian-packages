echo 
echo SimpleServer starting
echo
cd

sudo apt-get update

clear
echo
	
	#installing standard packages or check 
	sudo apt-get install dpkg --yes
	sudo apt-get install build-essential --yes
	
	sudo apt-get -y install ntfs-3g hfsutils hfsprogs exfat-fuse
	
	sudo apt-get install gksu --yes
	sudo apt-get install aptitude --yes
	sudo apt-get install preload --yes
	sudo apt-get install wget --yes
		sudo apt-get install p7zip --yes
			sudo apt-get install p7zip-full --yes
			sudo apt-get install p7zip-rar --yes
		sudo apt-get install makeself --yes
		sudo apt-get install libfuse-dev --yes
	
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
		sudo apt-get install oracle-java8-jdk --yes
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
			sudo apt-get install fp-compiler --yes
			sudo apt-get install perl --yes
		sudo apt-get install qt5-default --yes
			sudo apt-get install qt4-default --yes
			sudo apt-get install qt4-dev-tools --yes
			sudo apt-get install qttools5-dev-tools --yes
			sudo apt-get install qt5-doc --yes
			sudo apt-get install qt4-doc --yes
			
		#python and pip, upgrade
		sudo apt-get install python2.7 --yes
		sudo apt-get install python-dev --yes
		sudo apt-get install python-pip --yes
			sudo pip install --upgrade pip 
			sudo pip install --upgrade virtualenv 
		sudo apt-get install python-setuptools --yes
		sudo apt-get install python-simplejson --yes
		sudo apt-get install python-imaging --yes
		sudo apt-get install sqlite3 --yes
	
		#network and connecting
		sudo apt-get install openssh-server --yes
		sudo apt-get install xrdp --yes
		sudo apt-get install putty --yes
		sudo apt-get install filezilla --yes
		sudo apt-get install openvpn --yes
		sudo apt-get install wireshark --yes
			sudo apt-get install tshark --yes 
		sudo apt-get install synaptic --yes
		sudo apt-get install samba --yes
			sudo apt-get install samba-common-bin --yes
		sudo apt-get install privoxy --yes
			sudo apt-get install squid --yes
		sudo apt-get install vuze --yes
		sudo apt-get install gufw --yes
		
		#tor with several tools
		sudo apt-get install tor 
			sudo apt-get install tor-arm --yes
			sudo apt-get install python-stem --yes
			sudo apt-get install vidalia --yes
			sudo apt-get install onionshare --yes
		
	#development, science and calculation (production)
	sudo apt-get install octave --yes
		sudo apt-get install octave-doc --yes 
		sudo apt-get install octave-epstk --yes
		sudo apt-get install gnuplot --yes
	sudo apt-get install vim --yes
	
	#git with graphical user interfaces
	sudo apt-get install git --yes
		sudo apt-get install gitk --yes
		sudo apt-get install git-gui --yes
		
	#android tools
	sudo apt-get install android-tools-adb --yes
	sudo apt-get install android-tools-fastboot --yes
	
	#others
	sudo apt-get install keepassx --yes
	sudo apt-get install docker.io --yes
		
clear
echo

sudo apt-get upgrade --yes
	
clear
echo 
echo SimpleServer finished
echo
