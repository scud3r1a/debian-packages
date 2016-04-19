echo
echo "Owncloud"
echo
echo "Port: 8021"
echo
echo "Volume: /data/Owncloud"

echo
docker restart Owncloud &> /dev/null

docker run --name Owncloud -d \
-p 8021:80 -v /data/Owncloud:/var/www/html \
owncloud:8.1 &> /dev/null
