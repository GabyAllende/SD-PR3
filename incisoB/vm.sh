#!/bin/bash
docker build ./subscriber -t image-subscriber:1.0.0
docker build ./publisher -t image-publisher:1.0.0
docker swarm init
docker stack deploy --compose-file docker-compose.yml ds-swarm-libros