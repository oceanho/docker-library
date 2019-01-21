#!/bin/bash
#
ld_pwd=$(pwd)
work_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"
cd $work_dir
docker build -t  my-dev-ansible:centos7 -f Dockerfile .
cd $old_pwd
