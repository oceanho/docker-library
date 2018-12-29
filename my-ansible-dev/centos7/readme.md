# my-dev-ansible

docker run --name my-ansile-controller --hostname controller --workdir /workdir -d -v ~/.ssh:/root/.ssh -v /data/docker/volumes/ansible:/workdir my-dev-ansible:centos7 tail -f /dev/null
