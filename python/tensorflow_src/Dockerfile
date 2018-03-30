FROM denley/python
MAINTAINER Denley Hsiao <denley@justtodo.com>

RUN source $HOME/.bash_profile \ 
  && pip install --upgrade pip \
  && pip install --upgrade numpy scipy sklearn matplotlib pillow \
  && pip install --upgrade six wheel

# 安装JDK 8
RUN sudo apt-get install -y software-properties-common \
  && sudo add-apt-repository ppa:webupd8team/java \
  && sudo apt-get update \
  && echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections \
  && echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections \
  && sudo apt-get install -y --upgrade oracle-java8-installer oracle-java8-set-default
  	  
