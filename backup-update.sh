rsync -avr --force --delete-after /media/Volume0/* /media/Passport/Backup/Volume0/
rsync -avr --force --delete-after /media/Volume1/* /media/Passport/Backup/Volume1/
rsync -avr --force --delete-after /media/Volume2/* /media/Passport/Backup/Volume2/

rsync -avr /media/Volume0/* /media/Passport/Backup/Volume0-Double/ &
rsync -avr /media/Volume1/* /media/Passport/Backup/Volume1-Double/ &
rsync -avr /media/Volume2/* /media/Passport/Backup/Volume2-Double/ &
root@Linux-NAS:~# ^C
root@Linux-NAS:~# cat backup-update.sh 
rsync -avr --force --delete-after /media/Volume0/* /media/Passport/Backup/Volume0/
rsync -avr --force --delete-after /media/Volume1/* /media/Passport/Backup/Volume1/
rsync -avr --force --delete-after /media/Volume2/* /media/Passport/Backup/Volume2/

rsync -avr /media/Volume0/* /media/Passport/Backup/Volume0-Double/ &
rsync -avr /media/Volume1/* /media/Passport/Backup/Volume1-Double/ &
rsync -avr /media/Volume2/* /media/Passport/Backup/Volume2-Double/ &
