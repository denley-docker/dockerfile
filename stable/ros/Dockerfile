FROM ros:kinetic

RUN apt-get update \
  && apt-get install -y language-pack-zh-hans locales sudo git vim tree

# 增加用户denley
RUN localedef -i zh_CN -f UTF-8 zh_CN.UTF-8 \
  && useradd -m -s /bin/bash argusai \
  && echo 'argusai ALL=(ALL) NOPASSWD:ALL' >>/etc/sudoers
USER argusai

ARG HOME=/home/argusai
ENV APP_DIR $HOME/argusai_ws
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR

ONBUILD COPY . $APP_DIR
ONBUILD RUN sudo apt-get update \
    && rosdep update \
    && rosdep install --from-paths src --ignore-src --rosdistro=kinetic -y \
    && sudo rm -rf /var/lib/apt/lists/*
