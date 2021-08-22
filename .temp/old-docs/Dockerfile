FROM node:14-alpine3.12
WORKDIR /home/.docs
EXPOSE ${PORT}
CMD  npm install && npx @11ty/eleventy --serve --port ${PORT}