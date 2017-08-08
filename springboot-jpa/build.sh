#!/bin/bash

source /etc/profile

MYIMAGE=127.0.0.1:8008/test/springboot-jpa

# uncomment if you need push
#docker login 192.168.1.2:8082 -u admin -p admin123

# stop all container
#docker kill $(docker ps -aq)

# remove all container
#docker rm $(docker ps -aq)

# remove old images
docker images | grep 127.0.0.1:8008/test/springboot-jpa | awk '{print $3}' | xargs docker rmi

# build jar and image
mvn package -e -X docker:build -DskipTest

# running container
docker run -dp 8888:8008 --name springboot-jpa ${MYIMAGE}

# push image
#docker push ${MYIMAGE}


