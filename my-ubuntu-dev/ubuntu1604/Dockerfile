FROM ubuntu:16.04
RUN apt-get update \
    && apt-get install --no-install-recommends -y \
             git \
             git-review \
             vim \
             openssh-server \
             ca-certificates \
             curl \
             wget \
             hping3 \
             sysstat \
             g++ \
             gcc \
             libc6-dev \
             python-dev \
             make \
             pkg-config \
             inetutils-ping \
             net-tools \
             apache2-utils \
             dnsutils \
             telnet \
             iptables \
    && rm -rf /var/lib/apt/lists/*

VOLUME "/etc/ssl"
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D" ]
