# https://wiki.ubuntuusers.de/LXC/

apt-get install --yes \
  lxc \
  debootstrap \
  bridge-utils 
  
mount cgroup -t cgroup /sys/fs/cgroup
