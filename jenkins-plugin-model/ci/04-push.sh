#!/bin/bash
docker image build -t rahulunixsa87/jenkins-demo1:$1 -f jenkins-plugin-model/src/demo2-publish/dockerfile .

if [ -z ${DOCKER_HUB_USER+x} ]
then 
    echo 'Skipping login - credentials not set' 
else 
    sudo docker login -u $DOCKER_HUB_USER -p $DOCKER_HUB_PASSWORD
fi

sudo docker push rahulunixsa87/jenkins-demo1:$1
