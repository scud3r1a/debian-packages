#SimpleServer
##The most important script for a Raspberry Pi server
####(Only woking with Raspbian or Ubuntu for ARM as well as Raspbian like distributions)

This is a fork of the InstallStart project (which install important normal-user applications and packages
for your Debian or Ubuntu based Linux OS (like Linux Mint or Ubuntu itself) and also some developer and security packages).

This project, SimpleServer, install some of these applications on the Raspberry Pi by executing the script.
In contrast to the InstallStart script, the focus is not on an "allround system" but on a simple normal-user server for the home network.

To install the scripts content, run it in your terminal:

		#! cd
		#! sudo apt-get install git --yes
		
		#! sudo git clone "https://github.com/gitoidevelopment/InstallStart"
		#! cd InstallStart/SimpleServer/
		#! sudo sh SimpleServer.sh --yes

After you have installed the content, the setting of the applications will begin instantly.
Please complete that by editing the required scripts like the notes in the script are pretending.
Furthermore, the instructions for the right settings are listed here:

	#Samba server (LAN)
		nano /etc/samba/smb.conf
		#! add the following lines similar in kind:
		 #! [Share]
		 #! comment = Share
		 #! path = /media/"device"/share
		 #! valid users = @users
		 #! force group = users
		 #! create mask = 0660
		 #! directory mask = 0771
		 #! read only = no
	
	#Tor proxy (LAN)
		sudo nano /etc/privoxy/config
		#! add the following lines in the eponymous area:
		 #! listen-address  "IP":8118
		 #! forward-socks5 / 127.0.0.1:9050 .
	
		sudo nano /etc/squid/squid.conf
		#! add the following lines in the eponymous area:
		 #! cache_peer localhost parent 8118 0 default no-query 
		 #! no-digest
		 #! never_direct allow all
		 
To update your system without repeating the whole setting, you can as well run the "SimpleServer_Update" script.

For the best experience with the Samba file server, please mount an USB drive permanently and use it for Samba.
Furthermore, be sure that you made the folder ("/media/"your device"/share") readable and usable for normal users by using "chmod +x share" or the like.

Thanks, 

####Kutsubato @ gitoidevelopment

###https://gitoidevelopment.github.io/InstallStart/