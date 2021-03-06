#!/bin/bash

docker swarm init
docker service create --name registry --publish published=5000,target=5000 registry:2

docker build ./subscriber -t image-subscriber:1.0.0
docker build ./publisher -t image-publisher:1.0.0

docker image tag image-subscriber:1.0.0 127.0.0.1:5000/image-subscriber
docker image tag image-publisher:1.0.0 127.0.0.1:5000/image-publisher

docker push 127.0.0.1:5000/image-subscriber
docker push 127.0.0.1:5000/image-publisher

# docker swarm init
# docker stack deploy --compose-file docker-compose.yml ds-swarm-libros