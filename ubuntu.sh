echo

add-apt-repository main
add-apt-repository universe
add-apt-repository multiverse
add-apt-repository restricted
add-apt-repository ppa:snappy-dev/tools --yes
echo

apt-get update --fix-missing
echo

apt-get install --force-yes ubuntu-restricted-extras unity-tweak-tool
echo
