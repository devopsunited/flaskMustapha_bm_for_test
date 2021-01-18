#!/bin/bash

# basé sur le repos https://github.com/argiris-mat/docker-compose-nginx-reverse-proxy

cd flask_app
docker build -t app .

cd ../nginx
docker build -t my-nginx .

cd ..
docker-compose up