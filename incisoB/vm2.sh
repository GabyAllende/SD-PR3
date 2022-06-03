#!/bin/bash
docker build ./subscriber -t image-subscriber:1.0.0
docker build ./publisher -t image-publisher:1.0.0

##comando join cuando este del swarm , o vm1 