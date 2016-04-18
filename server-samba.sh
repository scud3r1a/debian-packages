echo
echo "Samba installation"
echo

apt-get update --fix-missing
apt-get install --force-yes --yes samba samba-common-bin

echo
echo "New user (Samba): root"
echo

smbpasswd -a root

echo
cp -avr InstallStart/smb.conf /etc/samba/smb.conf
echo
/etc/init.d/samba restart

echo
tail -n 17 /etc/samba/smb.conf
echo

mkdir -m 777 -p /vagrant /data

echo
echo "Done."
echo
