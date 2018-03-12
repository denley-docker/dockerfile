FROM ubuntu:16.04
MAINTAINER Denley Hsiao <denley@justtodo.com>

# RUN mv /etc/apt/sources.list /etc/apt/sources_bak.list
# COPY sources.list /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y language-pack-zh-hans \
  curl bzip2 locales sudo libbz2-dev git

# 增加用户denley
RUN localedef -i zh_CN -f UTF-8 zh_CN.UTF-8 \
  && useradd -m -s /bin/bash denley \
  && echo 'denley ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers
USER denley
WORKDIR /home/denley
SHELL ["/bin/bash", "-c"]

RUN curl -k -sSl https://get.docker.com | sudo sh
RUN sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose \
  && sudo chmod +x /usr/local/bin/docker-compose

# RUN docker run -d -p 1979:1979 oddrationale/docker-shadowsocks -s 0.0.0.0 -p 1979 -k password -m aes-256-cfb
