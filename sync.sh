# sh sync.sh <IP Backup Server> <user> <password>

rsync -r -a -v --rsh="sshpass -p $3 ssh -l $2" --delete /data/ $1:/data/
rsync -r -a -v --rsh="sshpass -p $3 ssh -l $2" --delete /root/ $1:/root/
rsync -r -a -v --rsh="sshpass -p $3 ssh -l $2" --delete /vagrant/ $1:/vagrant/

echo
echo "Done."
echo
