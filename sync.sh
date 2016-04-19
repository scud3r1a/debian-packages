# sh sync.sh <IP Backup Server>

rsync -r -a -v -e "ssh -l root" --delete /data/ $1:/data/
