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

# 安装bazel
RUN echo "deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8" | sudo tee /etc/apt/sources.list.d/bazel.list \
  && curl https://bazel.build/bazel-release.pub.gpg | sudo apt-key add - \
  && sudo apt-get update && sudo apt-get install -y --upgrade bazel

# 下载tensorflow
RUN mkdir -p $HOME/backup/tensorflow \
  && chown -R denley: $HOME/backup/tensorflow \
  && git clone -b r1.4 https://github.com/tensorflow/tensorflow backup/tensorflow

# 编译/安装tensorflow
RUN source $HOME/.bash_profile \
  && cd backup/tensorflow \
  && PYTHON_BIN_PATH=$HOME/.pyenv/shims/python ./configure \
  && bazel build --config=opt --incompatible_load_argument_is_label=false //tensorflow/tools/pip_package:build_pip_package \
  && bazel-bin/tensorflow/tools/pip_package/build_pip_package ../tensorflow_pkg \
  && pip install ../tensorflow_pkg/tensorflow-1.4.1-cp35-cp35m-linux_x86_64.whl
  	  
