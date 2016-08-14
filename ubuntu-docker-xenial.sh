echo && uname -r && echo

apt-get install apt-transport-https ca-certificates
echo

apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

echo
echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" > /etc/apt/sources.list.d/docker.list
apt-get update

apt-get install docker-engine
service docker start
docker run hello-world
