FROM denley/dev_ubuntu
MAINTAINER Denley Hsiao <denley@justtodo.com>

# 安装rvm & ruby
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 \
  && curl -L https://get.rvm.io | bash -s stable \
  && source  $HOME/.bash_profile \
  && rvm requirements \
  && rvm install ruby-2.4.1 \
  && rvm use ruby-2.4.1 --default
