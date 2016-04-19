mkdir -m 777 -p /backup
chmod -R 777 /backup

DAY=`date +"%D"`
TIME=`date +"%T"`

tar -cvz -f /backup/data-$DAY-$TIME.tar.gz /data/
tar -cvz -f /backup/vagrant-$DAY-$TIME.tar.gz /vagrant/
tar -cvz -f /backup/root-$DAY-$TIME.tar.gz /root/

rm -rf tmpbck.txt
