FROM jekyll/minimal:latest
WORKDIR /home/src
EXPOSE ${PORT}
ENTRYPOINT jekyll serve --watch --force_polling --verbose -H ${HOST} -P ${PORT}