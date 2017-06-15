echo

apt-get update --fix-missing
apt-get install --force-yes --yes samba samba-common-bin ntfs-3g hfsutils hfsprogs exfat-fuse

mkdir -m 777 -p /media/Volume0
mkdir -m 777 -p /media/Volume1
mkdir -m 777 -p /media/Volume2
mkdir -m 777 -p /media/Volume3
mkdir -m 777 -p /media/Volume4
mkdir -m 777 -p /media/Passport

echo
echo "New user (Samba): root"
echo

smbpasswd -a root

echo
cp -avr smb.conf /etc/samba/smb.conf
echo
/etc/init.d/samba restart


