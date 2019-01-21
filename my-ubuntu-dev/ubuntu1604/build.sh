#!/bin/bash
#

old_pwd=$(pwd)
work_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
cd $work_dir
docker build -t my-dev-ubuntu:16.04 -f Dockerfile .
cd $old_pwd

