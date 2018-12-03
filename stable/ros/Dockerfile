FROM ros:kinetic

ENV APP_DIR $HOME/app
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR

ONBUILD COPY . $APP_DIR
ONBUILD RUN apt-get update \
    && rosdep install --from-paths src --ignore-src --rosdistro=kinetic -y \
    && rm -rf /var/lib/apt/lists/*
