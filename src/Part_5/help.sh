#!/bin/bash

cd /home/emmonbea/Github/s21_SimpleDocker/src/Part_5/
docker build -t correct_server:1.0 . || exit 1
dockle -i CIS-DI-0010 correct_server:1.0
docker run -it -p 80:81 -v /home/emmonbea/Github/s21_SimpleDocker/src/Part_5/nginx.conf:/etc/nginx/nginx.conf -d correct_server:1.0 bash || exit 1
sleep 3
echo -e "curl http://localhost:80/:"
curl http://localhost:80/
echo ""
container=$(docker ps --format "{{.Names}}")
# docker logs $container
docker stop $container
docker rm $container
docker rmi correct_server:1.0
