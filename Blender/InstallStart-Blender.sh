clear 
echo

echo
echo "Downloading Blender (64 bit)"
echo

wget "http://ftp.halifax.rwth-aachen.de/blender/release/Blender2.74/blender-2.74-linux-glibc211-x86_64.tar.bz2"
sudo tar xvjf "blender-2.74-linux-glibc211-x86_64.tar.bz2"
sudo rm "blender-2.74-linux-glibc211-x86_64.tar.bz2"
mv "blender-2.74-linux-glibc211-x86_64" "blender"

echo
echo "Installing Blender"
echo

sudo rm -r /opt/blender
sudo mkdir /opt/blender
sudo cp -r blender/* /opt/blender/

sudo rm "/usr/share/applications/blender.desktop"
sudo cp "InstallStart/Blender_first/blender.desktop" "/usr/share/applications/"

sudo rm -r blender
echo
echo "InstallStart (Blender) finished"
echo
