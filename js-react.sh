#!/bin/bash

ABBREV='javascript-react'
OWNER='rubyonracetracks'
DISTRO='debian'
SUITE='bullseye'
DOCKER_IMAGE="registry.gitlab.com/$OWNER/docker-$DISTRO-$SUITE-min-stage2"
CONTAINER="container-$DISTRO-$SUITE-$ABBREV"

echo 'By default, your host port numbers are:'
echo '  React web server: 3000'
echo
echo 'If you wish to work with multiple Docker images, you need to use a'
echo 'different offset for each one in order to avoid conflicts.'
echo
echo 'Enter the desired offset for your port numbers.'
read OFFSET

P3000=$(( 3000+OFFSET ))

bash setup.sh $ABBREV $DOCKER_IMAGE $CONTAINER $P3000 '3000'
