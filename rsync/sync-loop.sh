# sh sync.sh <IP Backup Server> <user> <password>

IP=`cat .tmp.txt |sed -n '1p'`
USER=`cat .tmp.txt |sed -n '2p'`
PASS=`cat .tmp.txt |sed -n '3p'`

echo

rsync -r -a -v --rsh="sshpass -p $PASS ssh -l $USER" --delete /data/ $IP:/data/
rsync -r -a -v --rsh="sshpass -p $PASS ssh -l $USER" --delete /vagrant/ $IP:/vagrant/

echo
echo "Done."
echo

sh tmp.sh
