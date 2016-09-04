#!/bin/bash
#Author: Kheshav Sewnundun (arvin_sew_kheshav@hotmail.com)

while [[ $# -gt 1 ]]
do
key="$1"

case $key in
	--name)
	NAME="$2"
	shift
	;;
	*)
	;;
esac
shift
done
ID=`docker ps -aqf "name=$NAME"`
if [ $? -eq 0 ]
then
  echo "$NAME id is: $ID "
  docker exec -it $ID /bin/bash
else
  echo "Could not find container name $NAME"
fi
