echo
echo "Server configuration"
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
		mime-support \
		desktop-file-utils \
		tree \
		dpkg \
		build-essential \
		automake \
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
		openvpn \
		privoxy \
		samba

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
