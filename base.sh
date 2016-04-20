echo

# Update, upgrade
apt-get update --fix-missing
apt-get dist-upgrade --force-yes --yes
apt-get update --fix-missing

#############################################################################################
echo

# Packages
apt-get install --force-yes --yes --no-install-recommends \
tar \
gzip \
mime-support \
sshpass \
desktop-file-utils \
tree \
dpkg \
build-essential \
automake \
preload \
wget \
curl \
htop \
nmap \
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
apt-transport-https

#############################################################################################
echo

# Final upgrade
apt-get update --fix-missing
apt-get upgrade --force-yes --yes
echo
apt-get autoremove --force-yes --yes
apt-get clean
