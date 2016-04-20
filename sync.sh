# sh sync.sh <IP Backup Server>

chmod -R 777 /data /root /vagrant /backup

rsync -r -a -v -e "ssh -l root" --delete /data/ $1:/data/
rsync -r -a -v -e "ssh -l root" --delete /root/ $1:/root/
rsync -r -a -v -e "ssh -l root" --delete /vagrant/ $1:/vagrant/

rsync -r -a -v -e "ssh -l root" /backup/ $1:/backup/
