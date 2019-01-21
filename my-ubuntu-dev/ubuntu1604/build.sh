#!/bin/bash
#

old_pwd=$(pwd)
target="my-dev-ubuntu:16.04"
work_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
cd $work_dir
docker build -t $target -f Dockerfile .
cd $old_pwd
echo "Done. docker image tag: $target"

