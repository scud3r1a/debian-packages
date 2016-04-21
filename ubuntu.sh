echo

add-apt-repository main
add-apt-repository universe
add-apt-repository multiverse
add-apt-repository restricted
add-apt-repository ppa:snappy-dev/tools --yes

apt-get update --fix-missing

apt-get install --force-yes ubuntu-restricted-extras unity-tweak-tool

echo
