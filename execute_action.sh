#!/bin/bash

JFROG_ACCOUNT=$1
JFROG_USER=$2
JFROG_TOKEN=$3
CONTAINER_REPO=$4
CONTAINER_IMAGE=$5

function docker_execute {
    docker login -u${JFROG_USER} ${JFROG_ACCOUNT} -p${JFROG_TOKEN}
    docker build -t ${JFROG_ACCOUNT}/${CONTAINER_REPO}/${CONTAINER_IMAGE}:${GITHUB_SHA} .
    docker push ${JFROG_ACCOUNT}/${CONTAINER_REPO}/${CONTAINER_IMAGE}:${GITHUB_SHA}
}

if test "$#" -ne 5; then
    echo "Invalid number of Arguments, plesase specify the correct number of arguments"
    echo "Please refer https://github.com/arunalakmal/jfrog-container-build-push-action#readme for more information."
    exit 1
else
    docker_execute
fi
