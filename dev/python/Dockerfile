FROM denley/dev_ubuntu
MAINTAINER Denley Hsiao <denley@justtodo.com>

RUN sudo apt-get update \
  && sudo apt-get install -y build-essential make g++ libssl-dev libreadline-dev libsqlite3-dev file uuid-runtime

# 安装pyenv & python
RUN curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash -s table \
  && echo 'export PYENV_ROOT="$HOME/.pyenv"' >> $HOME/.bash_profile \
  && echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> $HOME/.bash_profile \
  && echo 'eval "$(pyenv init -)"' >> $HOME/.bash_profile \
  && source $HOME/.bash_profile \
  && pyenv install -v 3.5.0 \
  && pyenv rehash \
  && pyenv global 3.5.0
  
RUN source $HOME/.bash_profile \ 
  && pip install --upgrade pip
