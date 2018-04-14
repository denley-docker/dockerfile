FROM rails

RUN apt-get update \
  && apt-get install -y libpq-dev

ENV APP_DIR $HOME/app
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR

ONBUILD COPY . $APP_DIR
ONBUILD RUN bundle install --jobs 20 --retry 5 --without development test \
  && rake assets:precompile RAILS_ENV=production

ENTRYPOINT ["rails"]
CMD ["s", "-b", "0.0.0.0", "-p", "3000", "-e", "production"]

EXPOSE 3000