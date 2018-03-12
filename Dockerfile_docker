FROM ubuntu:16.04
MAINTAINER Denley Hsiao <denley@justtodo.com>

# 更新源
# RUN mv /etc/apt/sources.list /etc/apt/sources_bak.list
# COPY sources.list /etc/apt/sources.list

RUN apt-get update \
  && apt-get install -y language-pack-zh-hans \
  curl locales sudo bzip2 libbz2-dev git

# 增加用户denley
RUN localedef -i zh_CN -f UTF-8 zh_CN.UTF-8 \
  && useradd -m -s /bin/bash denley \
  && echo 'denley ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers
USER denley
WORKDIR /home/denley
SHELL ["/bin/bash", "-c"]

# 配置git
RUN git config --global user.name "Denley Hsiao" \
  && git config --global user.email "denley@justtdodo.com"

# 安装docker/docker-compose
RUN curl -k -sSl https://get.docker.com | sudo sh \
  && sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose \
  && sudo chmod +x /usr/local/bin/docker-compose
