#!/bin/bash

ABBREV='min-stage1'
OWNER='rubyonracetracks'
DISTRO='debian'
SUITE='bullseye'
DOCKER_IMAGE="ghcr.io/$OWNER/docker-$DISTRO-$SUITE-$ABBREV"
CONTAINER="container-$DISTRO-$SUITE-$ABBREV"

bash setup.sh $ABBREV $DOCKER_IMAGE $CONTAINER
