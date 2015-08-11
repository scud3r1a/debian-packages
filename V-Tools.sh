###############################################################################

echo
echo Installing virtualization tools
echo

###############################################################################

#Virtualbox
apt-get install virtualbox --yes
	echo

###############################################################################

#Qemu
apt-get install qemu --yes
	apt-get install qemu-system-x86 --yes
	apt-get install qemu-system --yes
	apt-get install qemu-kvm --yes
		apt-get install qemu-kvm-extras --yes
		apt-get install libvirt-bin --yes
		apt-get install virt-manager --yes
			apt-get install virt-viewer --yes
			apt-get install python-spice-client-gtk --yes
				echo

###############################################################################

#Docker installation - for Debian
apt-get install docker.io --yes
echo

#Docker update/installation - not working with Debian
wget -qO- https://get.docker.com/ | sh
echo

	#Docker Compose installation
	pip install -U docker-compose
	echo

	#Docker machine installation
	curl -L downloads.hypriot.com/docker-machine_0.4.0-dev_linux-amd64 > /usr/local/bin/docker-machine
		chmod +x /usr/local/bin/docker-machine
			echo
				clear
					echo

	###############################################################################

	#Docker images
	docker pull swarm:latest
	docker pull dockerui/dockerui
	echo
	docker pull centos
	docker pull nginx
	docker pull debian
	docker pull ubuntu
		docker pull ubuntu:wily
		docker pull ubuntu-upstart
		docker pull jujusolutions/jujubox
			docker pull jujusolutions/charmbox
	docker pull rails
	docker pull django
	docker pull php:latest
		docker pull php:5.6-apache
	docker pull alpine
	docker pull fedora
		echo
			clear
				echo

###############################################################################

#Vagrant installation
mkdir /vagrant && cd /vagrant
	echo
		clear
			echo

wget https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.4_x86_64.deb
  dpkg -i vagrant_1.7.4_x86_64.deb
    rm vagrant_1.7.4_x86_64.deb
			echo
				clear
					echo

###############################################################################

  #Vagrant images
	mkdir hashicorp
		cd hashicorp
			echo
				vagrant init hashicorp/precise64
					echo
						vagrant up --provider virtualbox
							echo
								cd /vagrant
									echo
	mkdir ubuntu
		cd ubuntu
			echo
				vagrant init ubuntu/trusty64
					echo
						vagrant up --provider virtualbox
							echo
								cd /vagrant
									echo

	mkdir fedora
		cd fedora
			echo
				vagrant init chef/fedora-21
					echo
						vagrant up --provider virtualbox
							echo
								cd /vagrant
									echo

	mkdir centos
		cd centos
			echo
				vagrant init chef/centos-7.0
					echo
						vagrant up --provider virtualbox
							echo
								cd /vagrant
									echo

###############################################################################

cd ~/
clear

###############################################################################

echo
echo Installation finished
echo

###############################################################################
