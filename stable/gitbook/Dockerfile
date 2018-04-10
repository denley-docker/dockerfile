FROM billryan/gitbook

ENV APP_DIR $HOME/app
RUN mkdir -p $APP_DIR
WORKDIR $APP_DIR

ONBUILD COPY . $APP_DIR
ONBUILD RUN gitbook install

ENTRYPOINT ["gitbook"]
CMD ["serve"]

EXPOSE 4000