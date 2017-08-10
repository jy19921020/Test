#!/usr/bin/env bash
docker run -d \
-p 8888:8888 \
--name jenkins-ci-demo \
-e spring.profiles.active="test" \
-e server.port=8888 \
jy19921020/Test