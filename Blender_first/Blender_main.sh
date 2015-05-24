wget "http://ftp.halifax.rwth-aachen.de/blender/release/Blender2.74/blender-2.74-linux-glibc211-x86_64.tar.bz2"
sudo tar xvjf "blender-2.74-linux-glibc211-x86_64.tar.bz2"
cd "blender-2.74-linux-glibc211-x86_64"
mv "blender-2.74-linux-glibc211-x86_64" "blender"
sudo cp -r blender/* /opt/blender/
sudo cp blender.desktop /usr/share/applications/

InstallStart finished (Blender installation)
