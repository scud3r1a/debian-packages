echo

# Repositories
add-apt-repository ppa:danielrichter2007/grub-customizer --yes
echo

#############################################################################################
echo

# Update, upgrade
apt-get update --fix-missing
apt-get dist-upgrade --force-yes --yes
apt-get update --fix-missing

#############################################################################################
echo

# Packages
apt-get install --force-yes --yes --no-install-recommends \
wine \
playonlinux \
filezilla \
wireshark \
tshark \
synaptic \
vlc \
shutter \
audacity \
libreoffice \
dia \
gimp \
inkscape \
k3b \
handbrake \
musescore \
calibre \
scribus \
scribus-template \
lyx \
pdfchain \
pdftk \
gelemental \
avogadro \
logisim \
lightspeed \
marble \
marble-qt \
melting \
melting-gui \
rasmol \
stellarium \
thunderbird \
firefox \
keepassx \
steam \
grub-customizer \
dconf-tools \
dconf-editor 

#############################################################################################
echo

# Static packages
rm -rf deb
wget https://atom.io/download/deb
dpkg -i --force-depends deb
rm -rf deb
echo

rm -rf ipscan_3.4.1_amd64.deb
wget https://github.com/angryziber/ipscan/releases/download/3.4.1/ipscan_3.4.1_amd64.deb
dpkg -i --force-depends ipscan_3.4.1_amd64.deb
rm -rf ipscan_3.4.1_amd64.deb
echo

rm -rf google-chrome-stable_current_amd64.deb
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i --force-depends google-chrome-stable_current_amd64.deb
rm -rf google-chrome-stable_current_amd64.deb
echo

rm -rf geogebra5_5.0.214.0-45980_amd64.deb
http://www.geogebra.net/linux/pool/main/g/geogebra5/geogebra5_5.0.214.0-45980_amd64.deb
dpkg -i --force-depends geogebra5_5.0.214.0-45980_amd64.deb
rm -rf geogebra5_5.0.214.0-45980_amd64.deb
echo

#############################################################################################
echo

# Final upgrade
apt-get update --fix-missing
apt-get upgrade --force-yes --yes
echo
apt-get autoremove --force-yes --yes
apt-get clean
