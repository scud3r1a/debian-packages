apt-get update --fix-missing

modprobe vboxnetflt

dpkg-reconfigure virtualbox-dkms
dpkg-reconfigure virtualbox

apt-get update --fix-missing
