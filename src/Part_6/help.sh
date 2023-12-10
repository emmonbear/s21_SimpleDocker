#!/bin/bash

docker-compose build
docker-compose up -d
sleep 3
curl http://localhost:80/
sleep 3
# docker-compose down
