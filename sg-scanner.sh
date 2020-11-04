#!/bin/bash
set -x
echo "Starting Security Assessment Scanning"
docker run --rm --net=host -v ${WORKSPACE}:/project -v /var/run/docker.sock:/var/run/docker.sock --name scancont -e SEC_BASE_PATH=$SEC_BASE_PATH -e CLAIR_ADDR=$CLAIR_ADDR sg-scanner
