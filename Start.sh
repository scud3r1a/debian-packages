#Update
echo
echo Update starting
echo

cd 

sudo apt-get install git --yes
sudo rm -r InstallStart
sudo git clone "https://github.com/gitoidevelopment/InstallStart"
chmod +x InstallStart/
cd InstallStart/

echo

#InstallStart
cd
sudo sh "InstallStart/InstallStart.sh"
