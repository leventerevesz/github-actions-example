#!/bin/sh

if [ -v GITHUB_WORKSPACE]
    then cd $GITHUB_WORKSPACE
fi

# Build solution
docker build -t example-project:ci-build .
echo "Created docker image example-project:ci-build."

# Copy artifacts from container to host
docker create --name tmp-container example-project:ci-build
docker cp tmp-container:/usr/src/esp-idf-project/build.zip .
docker rm tmp-container
