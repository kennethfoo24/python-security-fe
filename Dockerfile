#!/bin/sh


#config
FROM node:16-alpine 
WORKDIR /react_app
COPY . .

#build
ENV PATH /react_app/node_modules/.bin:$PATH
COPY package.json ./
COPY package-lock.json ./
RUN npm install --silent
RUN npm install react-scripts@3.4.1 -g --silent

COPY . ./
#run
EXPOSE 3000
CMD [ "npm", "start" ]

