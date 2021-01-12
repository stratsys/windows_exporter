#!/bin/sh
DOCKER_BUILDKIT=1 docker build --rm -t windows_exporter:build . && (docker run -e "VERSION_TAG=$VERSION_TAG" --rm windows_exporter:build | tar xvf -)
