#!/bin/bash

DOCKER_IMAGE='<DOCKER_IMAGE>'
CONTAINER='<CONTAINER>'

wget -O - https://gitlab.com/rubyonracetracks/docker-debian-common/raw/master/delete-containers.sh | bash -s "$CONTAINER"

sh copy_new.sh $DOCKER_IMAGE $CONTAINER
