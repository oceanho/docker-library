#!/bin/bash
#

work_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
docker run -v /var/run/docker.sock:/var/run/docker.sock --privileged -v ${work_dir}:/apps --workdir /apps --rm -it docker docker build -t my-dev-ubuntu:16.04 -f Dockerfile .
