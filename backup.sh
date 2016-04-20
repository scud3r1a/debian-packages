mkdir -m 777 -p /backup
chmod -R 777 /backup

echo

echo "/data"
tar -cvz -f /backup/data-`date +"%d"`-`date +"%m"`-`date +"%y"`-`date +"%s"`.tar.gz /data/
echo

echo "/vagrant"
tar -cvz -f /backup/vagrant-`date +"%d"`-`date +"%m"`-`date +"%y"`-`date +"%s"`.tar.gz /vagrant/
echo

echo "/root"
tar -cvz -f /backup/root-`date +"%d"`-`date +"%m"`-`date +"%y"`-`date +"%s"`.tar.gz /root/
echo

echo
echo "Done."
echo
