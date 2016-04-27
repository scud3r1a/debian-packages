# sh loop.sh $1 $2 $3
# sh sync.sh $1 $2 $3

echo "$1" > .tmp.txt
echo "$2" >> .tmp.txt
echo "$3" >> .tmp.txt

sh sync-loop.sh
