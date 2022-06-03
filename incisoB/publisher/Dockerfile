
FROM node:latest


WORKDIR /usr/src/app


COPY package*.json ./

RUN npm install

COPY . .


ENV TOPIC='libros'
ENV PORT=1883
ENV HOST='broker'



ENTRYPOINT [ "node" , "index.js" ]

