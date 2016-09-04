#!/bin/bash
#Author: Kheshav Sewnundun (arvin_sew_kheshav@gmail.com)

while [[ $# -gt 1 ]]
do
key="$1"

case $key in
	--name)
	NAME="$2"
	shift
	;;
	--image)
	IMAGE="$2"
	shift
	;;
	*)
	;;
esac
shift
done
docker run -it -e "container=docker" --privileged=true -d  --security-opt seccomp:unconfined --cap-add=SYS_ADMIN -v /sys/fs/cgroup:/sys/fs/cgroup:ro --name $NAME $IMAGE bash -c "/usr/sbin/init"
