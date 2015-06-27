clear 
echo

echo
echo "Downloading Blender (64 bit)"
echo

wget "download.blender.org/release/Blender2.75/blender-2.75-rc1-linux-glibc211-x86_64.tar.bz2"

echo
sudo mv "blender-2.75-rc1-linux-glibc211-x86_64.tar.bz2" "blender.tar.bz2"

sudo tar xvjf "blender.tar.bz2"
sudo rm "blender.tar.bz2"

echo
echo "Installing Blender"
echo

sudo rm -r /opt/blender
sudo mkdir /opt/blender
sudo cp blender/* /opt/blender/

sudo rm "/usr/share/applications/blender.desktop"
sudo cp "InstallStart/Blender_first/blender.desktop" "/usr/share/applications/"

sudo rm -r blender
echo
echo "InstallStart (Blender) finished"
echo
