FROM denley/ubuntu
MAINTAINER Denley Hsiao <denley@justtodo.com>

# 安装rvm & ruby
RUN gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 \
  && curl -L https://get.rvm.io | bash -s stable \
  && source  $HOME/.bash_profile \
  && rvm requirements \
  && rvm install ruby-2.4.1 \
  && rvm use ruby-2.4.1 --default
  
# 安装rails
RUN source  $HOME/.bash_profile \
  && gem install rails -v 5.1.4
  
# 安装nvm/nodejs		
RUN curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.31.2/install.sh | bash -s stable \		
  && source $HOME/.nvm/nvm.sh \		
  && nvm install stable
  
# 安装Gitbook
RUN source $HOME/.nvm/nvm.sh \
  && npm install -g gitbook-cli

# 安装hexo
RUN source $HOME/.nvm/nvm.sh \
  && npm install -g hexo-cli

# 安装pyenv & python
RUN curl -L https://raw.githubusercontent.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash -s table \
  && echo 'export PYENV_ROOT="$HOME/.pyenv"' >> $HOME/.bash_profile \
  && echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> $HOME/.bash_profile \
  && echo 'eval "$(pyenv init -)"' >> $HOME/.bash_profile \
  && source $HOME/.bash_profile \
  && pyenv install -v 3.5.0 \
  && pyenv rehash \
  && pyenv global 3.5.0

# 安装jupyter
RUN source $HOME/.bash_profile \
  && pip install --upgrade pip \
  && pip install --upgrade jupyter

# 安装tensorflow  
RUN source $HOME/.bash_profile \ 
  && pip install --upgrade pip \
  && pip install --upgrade numpy scipy sklearn matplotlib pillow \
  && pip install --upgrade tensorflow