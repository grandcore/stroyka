FROM node:14-alpine3.12
# install bash
RUN apk update
RUN apk upgrade
RUN apk add bash
WORKDIR /home/.docs
EXPOSE ${PORT}
CMD  npm install && npx @11ty/eleventy --serve --port ${PORT}