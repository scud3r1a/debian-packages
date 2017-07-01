# Set variables
OCV_VERSION=3.2.0
OCV_DIR=~/opencv-$OCV_VERSION

apt-get update

# Install dependencies
apt-get install -y \
build-essential \
cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev \
python-dev python-numpy libtbb2 libtbb-dev libjpeg-dev libpng-dev libtiff-dev libjasper-dev libdc1394-22-dev \
wget

# Pull sources
mkdir -m 777 -p $OCV_DIR
pushd $OCV_DIR

wget https://github.com/opencv/opencv/archive/${OCV_VERSION}.zip

unzip $OCV_VERSION.zip -d .

mkdir -m 777 -p opencv-$OCV_VERSION/backup
mv *.zip opencv-$OCV_VERSION/backup

cp -avr opencv-$OCV_VERSION/* .

rm -rf opencv-$OCV_VERSION

popd

# Build
pushd $OCV_DIR

mkdir build 
cd build 

cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..
make -j4

# Installation
make install

.. cd
popd
