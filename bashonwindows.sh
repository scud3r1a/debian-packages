echo
uname -r
echo

apt-get update --fix-missing
apt-get install ca-certificates git linux-generic ssh openssh-client openssh-server --yes
apt-get dist-upgrade --yes

echo
