# Variables
ARCH=AMD64
OS=ubuntu
# DEBAIN_VERSION=jessie
UBUNTU_VERSION=17.04

TMP_DIR=/tmp
KEEPASSX_URL=https://github.com/keepassx/keepassx/archive/master.zip

# ================================================================================================

# Repositories
apt-get update --fix-missing

# ================================================================================================

# Base
apt-get install --force-yes --yes --no-install-recommends \
    qtbase5-dev libqt5x11extras5-dev qttools5-dev qttools5-dev-tools libgcrypt20-dev zlib1g-dev libxi-dev libxtst-dev \
    tar \
    gzip \
    software-properties-common \
    mime-support \
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
    make \
    cmake \
    ntfs-3g \
    rsync \
    hfsutils \
    hfsprogs \
    exfat-fuse \
    archivemount \
    makeself \
    libfuse-dev \
    libssl-dev \
    man \
    unzip \
    bzip2 \
    ca-certificates \
    nano \
    openssh-server \
    openssh-client \
    openvpn \
    binfmt-support \
    dosfstools \
    apt-cacher-ng \
    sshpass \
    gnupg2 \
    nfs-kernel-server \
    nfs-common \
    apt-transport-https \
    nfs-common

# Debian
if [ $OS == debian ]
then 
    apt-get install --force-yes --yes --no-install-recommends --yes \
        debootstrap
fi

# Ubuntu
if [ $OS == ubuntu ]
then 
    apt-get install --force-yes --yes --no-install-recommends --yes \
        ubuntu-restricted-extras \
        lame \
        unrar \
        gstreamer1.0-fluendo-mp3 \
        gstreamer1.0-plugins-bad \
        gstreamer1.0-plugins-ugly \
        gstreamer1.0-libav \
        gstreamer1.0-fluendo-mp3 \
        libdvdread4 \
        libk3b6-extracodecs \
        oxideqt-codecs-extra \
        libavcodec-extra \
        libavcodec-ffmpeg-extra56 \
        linux-image-extra-$(uname -r) \
        linux-image-extra-virtual \
        snapd \
        snapcraft
fi

# ================================================================================================

# Docker
# https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#uninstall-docker-ce
apt-get remove docker docker-engine docker.io --yes --purge

if [ $OS == debian && $ARCH=AMD64 ]
then
    curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
    apt-get update --fix-missing
    sudo add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
elif [ $OS == ubuntu && $ARCH=AMD64 ]
then
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - 
    apt-get update --fix-missing
    add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
else
    echo "No OS or wrong OS specified."
fi

apt-get update --fix-missing
apt-get install docker-ce --yes

docker run hello-world

# ================================================================================================

# Additional software
mkdir -m 777 -p $TMP_DIR

# KeePassX
rm -rf $TMP_DIR/** && pushd $TMP_DIR
wget $KEEPASSX_URL
unzip master.zip -d .
cd keepassx-master
mkdir build
cd build
cmake ..
make -j4
make install
popd

# VS Code
rm -rf $TMP_DIR/** && pushd $TMP_DIR
wget $CODE_URL
dpkg -i --force-depends *.deb
popd

# ================================================================================================

# Nvidia
apt-add-repository --yes ppa:graphics-drivers/ppa
apt-get install nvidia-375 nvidia-settings --yes

# ================================================================================================

# Final update
apt-get dist-upgrade --yes --force-yes

# ================================================================================================

# Clean up
apt-get autoremove --yes --force-yes 
apt-get clean
