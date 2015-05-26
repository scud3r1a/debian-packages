#Update

cd 

sudo apt-get install git --yes
sudo rm -r Installstart/
sudo git clone "https://github.com/gitoidevelopment/InstallStart"
chmod +x InstallStart/
cd InstallStart/SimpleServer

echo
echo Update finished
echo

cd
sudo sh "InstallStart/SimpleServer/SimpleServer.sh"
