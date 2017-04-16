# Kernel 3.16 Debian, Ubuntu
# https://forum.ubuntuusers.de/topic/wlan-stick-524440/3/#post-5638107
apt-get install --reinstall linux-headers-$(uname -r) build-essential dkms git --yes
git clone https://github.com/pvaret/rtl8192cu-fixes.git
dkms add ./rtl8192cu-fixes
dkms install 8192cu/1.10
echo "blacklist rtl8192cu" | tee -a /etc/modprobe.d/blacklist.conf 
