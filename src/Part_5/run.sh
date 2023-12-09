#!/bin/bash
export DOCKER_CONTENT_TRUST=1
gcc server.c -lfcgi -o server
spawn-fcgi -p 8080 ./server
service nginx start
/bin/bash
