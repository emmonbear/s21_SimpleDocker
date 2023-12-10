#!/bin/bash

docker-compose build
docker-compose up -d
sleep 3
curl http://localhost:80/
# docker-compose logs server
# docker-compose logs nginx
# docker-compose down
