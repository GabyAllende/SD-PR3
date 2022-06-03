FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

ENV topic='libros'
ENV brokerip='research.upb.edu'
ENV port=21212

CMD [ "node", "index.js" ]