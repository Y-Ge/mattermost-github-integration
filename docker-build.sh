#!/bin/bash
VERSION=0.1.0
IMAGE=softdevteam__mattermost-github-integration
docker build --squash -t $IMAGE:$VERSION .
