#!/bin/sh
echo "##vso[task.setvariable variable=VERSION_TAG]$(git describe --tags | sed 's/v\([0-9.]*\).*/\1/g')"