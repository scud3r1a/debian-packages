mkdir -m 777 -p /backup
chmod -R 777 /backup

rm -rf tmpbck.txt
date +"%D" >> tmpbck.txt
date +"%T" >> tmpbck.txt

DAY=`cat tmpbck.txt |sed -n '1p'`
TIME=`cat tmpbck.txt |sed -n '2p'`

tar -cvz -f /backup/data-$DAY-$TIME.tar.gz /data/
tar -cvz -f /backup/vagrant-$DAY-$TIME.tar.gz /vagrant/
tar -cvz -f /backup/root-$DAY-$TIME.tar.gz /root/

rm -rf tmpbck.txt
