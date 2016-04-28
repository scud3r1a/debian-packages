echo

add-apt-repository main
add-apt-repository universe
add-apt-repository multiverse
add-apt-repository restricted
add-apt-repository ppa:snappy-dev/tools --yes
echo

apt-get update --fix-missing
echo

apt-get install --force-yes --yes \
ubuntu-restricted-extras \
unity-tweak-tool \
bzr \
snapd \
snapcraft \
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
libavcodec-ffmpeg-extra56

echo
