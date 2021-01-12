#!/bin/sh
DOCKER_BUILDKIT=1 docker build --rm -t windows_exporter:build --build-arg VERSION_TAG="$VERSION_TAG" . && (docker run --rm -it windows_exporter:build sh | tar xvf -)
