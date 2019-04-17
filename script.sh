#!/bin/bash
docker build -t palani .
docker_image_ID=`docker images |sed -n '2p' |awk '{print $3 }'`
#echo -e $docker_image_ID
docker run -dt --name task $docker_image_ID>/dev/null
Container_ID=`docker ps -a | sed -n '2p' |awk '{print $1}'`
docker exec -it $Container_ID ./find.sh /bin/bash
docker rm -f $Container_ID>/dev/null
