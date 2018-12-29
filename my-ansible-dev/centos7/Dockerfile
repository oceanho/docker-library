FROM williamyeh/ansible:centos7
RUN yum update -y \
    && yum install -y vim openssh-server \
    && ssh-keygen -f /etc/ssh/ssh_host_rsa_key -t rsa -N "" \
    && ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -t ecdsa -N "" \
    && ssh-keygen -f /etc/ssh/ssh_host_ed25519_key -t ed25519 -N ""
COPY ./files/vimrc /tmp/vimrc.txt
RUN cat /tmp/vimrc.txt >> /etc/vimrc
COPY ./entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh
ENTRYPOINT /usr/local/bin/entrypoint.sh
WORKDIR /workdir
