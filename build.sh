#!/bin/sh
DOCKER_BUILDKIT=1 docker build --rm -t windows_exporter:build . && (docker run --rm windows_exporter:build | tar xvf -)
