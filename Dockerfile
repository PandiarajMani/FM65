FROM node:10.23-alpine3.9

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install --silent
COPY . /usr/src/app
EXPOSE 3000

ENV PORT 3000

CMD [ "npm", "start" ]