# screen bash passport-backup-VolumeJ.sh

while true
do

	echo && echo

	rsync -avr --force --delete-after /media/Volume0/* /media/Passport/Backup/Volume0/
	rsync -avr --force --delete-after /media/Volume1/* /media/Passport/Backup/Volume1/
	rsync -avr --force --delete-after /media/Volume2/* /media/Passport/Backup/Volume2/
	rsync -avr --force --delete-after /media/Volume3/* /media/Passport/Backup/Volume3/
	rsync -avr --force --delete-after /media/Volume4/* /media/Passport/Backup/Volume4/

	rsync -avr --force --delete-after /root/* /media/Passport/Backup/root/ &

	echo && echo

	rsync -avr /media/Volume0/* /media/Passport/Backup/Volume0-Double/ &
	rsync -avr /media/Volume1/* /media/Passport/Backup/Volume1-Double/ &
	rsync -avr /media/Volume2/* /media/Passport/Backup/Volume2-Double/ &
	rsync -avr /media/Volume3/* /media/Passport/Backup/Volume3-Double/ &
	rsync -avr /media/Volume4/* /media/Passport/Backup/Volume4-Double/ &

	rsync -avr /root/* /media/Passport/Backup/root/ &
	rsync -avr /home/*/* /media/Passport/Backup/root/ &

	echo && echo "Ende." && echo

	sleep 86400

done
