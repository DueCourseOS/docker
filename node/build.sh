#!/bin/bash

DOCKERFILE=$1
TAG="duecourse/node"
VERSION=$(cat $DOCKERFILE | head -n 1 | cut -d ':' -f 2)

echo "Building $TAG:$VERSION..."
docker build -f $DOCKERFILE -t "$TAG:$VERSION" -t "$TAG:latest" .

echo
read -p "Push to Docker Hub [y/N]? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
	docker push "$TAG:$VERSION"
	docker push "$TAG:latest"
fi
