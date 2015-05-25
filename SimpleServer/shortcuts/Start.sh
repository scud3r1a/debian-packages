#starting all services
cd
clear
echo
sudo service tor restart
echo
sudo service privoxy restart
echo
/etc/init.d/samba restart
echo