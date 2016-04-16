echo
echo "Samba installation"
echo

apt-get update --fix-missing
echo
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

echo
echo "Done."
echo
