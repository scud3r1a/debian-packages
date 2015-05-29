#InstallStart
##The most important script for a new Ubuntu installation
####(Only woking with Ubuntu or Debian-like distributions)

This is a very simple script that installs the most important normal-user applications and packages
for your Debian or Ubuntu based Linux OS (like Linux Mint or Ubuntu itself).
Furthermore, I added some developer and security packages as well.

The script is very self-explaining.
Feel free to add your own favourite lines respectively programs for Debian/Ubuntu.
For the Raspberry Pi, you will find a special edition of the InstallStart script in the repository as well.
It is called SimpleServer.

For the best experience, please use an distribution version comparable to Ubuntu 14.04 or greater.
To get fast access to all your favourite applications after the OS installation, 
type the following lines in the terminal from your home directory:

		#! cd
		#! sudo apt-get install git --yes
		
		#! sudo git clone "https://github.com/gitoidevelopment/InstallStart"
		#! cd InstallStart/
		#! sudo sh InstallStart.sh --yes

This code places the InstallStart script right on your disk via Git.
When you have installed it once, you can copy the "InstallStart-Update.sh" in your home directory 
to update your InstallStart script and your system by executing the script

####Kutsubato @ gitoidevelopment
