FROM node:20.11.0-alpine

RUN apk update && apk add git

WORKDIR /src/front

COPY ../../frontend/package*.json ./

RUN npm install

