#!/bin/bash

set -ev

if [ ! -d ./datadir ]
then
    mkdir -p datadir
    chmod -R 777 datadir
fi

if [ ! -d ./videos ]
then
    mkdir -p videos
    chmod -R 777 videos
fi

docker-compose -f docker-compose-alpine.yml up
