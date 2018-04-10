FROM denley/dev_ubuntu
MAINTAINER Denley Hsiao <denley@justtodo.com>

# 安装docker
RUN curl -k -sSl https://get.docker.com | sudo sh

# 安装docker-compose
RUN sudo curl -L https://github.com/docker/compose/releases/download/1.20.1/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose \
  && sudo chmod +x /usr/local/bin/docker-compose
