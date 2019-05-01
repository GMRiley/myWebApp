FROM node:alpine

WORKDIR /app/
RUN apk update
RUN apk add --virtual builds-deps build-base python

copy . .
RUN npm config set python /usr/bin/python
RUN npm i

CMD ["node", "/app/index.js"]