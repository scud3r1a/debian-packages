# Variables
OS=ubuntu
DEBAIN_VERSION=jessie
UBUNTU_VERSION=17.04
ARCH=AMD64

# ================================================================================================

# Flags
FLAGS_STRING=$@

FLAG_SNAP=0
FLAG_SNAP_CHECK=`echo $FLAGS_STRING | grep "snap"`

FLAG_NVIDIA=0
FLAG_NVIDIA_CHECK=`echo $FLAGS_STRING | grep "nvidia"`



if [ FLAG_SNAP_CHECK != "" ]
then
    FLAG_SNAP=1
fi
if [ FLAG_NVIDIA_CHECK != "" ]
then
    FLAG_NVIDIA=1
fi


# ================================================================================================

# Repositories
apt-get update --fix-missing

# ================================================================================================

# Base
apt-get install --force-yes --yes --no-install-recommends \
    linux-image-extra-$(uname -r) \
    linux-image-extra-virtual \
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
        ubuntu-restricted-extras
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
        oxideqt-codecs-extra \
        libavcodec-extra \
        libavcodec-ffmpeg-extra56

        # Flags
        if [ $FLAG_SNAP == 1 ]
        then
            apt-get install --force-yes --yes --no-install-recommends --yes \
                snapd \
                snapcraft
        fi
fi

# Debian
# if [ $OS == debian ]
# then 
#        libk3b6-extracodecs

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

# Final update
apt-get dist-upgrade --yes --force-yes

# ================================================================================================

# Clean up
apt-get autoremove --yes --force-yes 
apt-get clean
