echo

add-apt-repository ppa:elementary-os/daily --force-yes --yes 
add-apt-repository ppa:elementary-os/os-patches --force-yes --yes
add-apt-repository ppa:elementary-os/testing --force-yes --yes 
add-apt-repository ppa:mpstark/elementary-tweaks-daily --force-yes --yes 
add-apt-repository ppa:elementary-os/stable --force-yes --yes 

echo

apt-get update --fix-missing

echo

apt-get install \
    elementary-theme \
    elementary-icon-theme \
    elementary-default-settings \
    elementary-desktop \
    --force-yes --yes --no-install-recommends
    
echo
echo "Done."
echo
