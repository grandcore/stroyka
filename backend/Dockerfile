FROM node:14-alpine3.12
WORKDIR /home/src 
ADD package*.json .. 
RUN npm install .. 
RUN npm install cors --save
RUN npm install jsonwebtoken --save
CMD node server.js
