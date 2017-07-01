echo

# Install Samba
apt-get update --fix-missing
apt-get install --force-yes --yes samba samba-common-bin ntfs-3g hfsutils hfsprogs exfat-fuse

# Conf share folders
mkdir -m 777 -p /media/Volume0
mkdir -m 777 -p /media/Volume1
mkdir -m 777 -p /media/Volume2
mkdir -m 777 -p /media/Volume3
mkdir -m 777 -p /media/Volume4
mkdir -m 777 -p /media/Passport

# Set user
echo
echo "New user (Samba): root"
echo

# Set password
smbpasswd -a root

# Place conf
echo
cp -avr smb.conf /etc/samba/smb.conf
echo
/etc/init.d/samba restart

# Link in user folder
ln -s \
/run/user/1000/gvfs/smb-share\:server\=linux-nas\,share\=data/ \
~/Data

echo
