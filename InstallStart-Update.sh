#Update
cd 

sudo apt-get install git --yes
sudo rm -r Installstart/
sudo git clone "https://github.com/gitoidevelopment/InstallStart"
chmod +x InstallStart/
cd InstallStart/

echo
echo Update finished
echo

#InstallStart
cd
sudo sh "InstallStart/InstallStart.sh"
