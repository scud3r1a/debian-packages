echo
clear
wget "http://ftp.halifax.rwth-aachen.de/blender/release/Blender2.74/blender-2.74-linux-glibc211-x86_64.tar.bz2"
sudo tar xvjf "blender-2.74-linux-glibc211-x86_64.tar.bz2"
sudo rm "blender-2.74-linux-glibc211-x86_64.tar.bz2"
mv "blender-2.74-linux-glibc211-x86_64" "blender"
sudo mkdir /opt/blender
sudo cp -r blender/* /opt/blender/
sudo cp "InstallStart/Blender_first/blender.desktop" "/usr/share/applications/"
echo
InstallStart finished 
echo
