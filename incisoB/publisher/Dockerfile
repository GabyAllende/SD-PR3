
FROM node:latest


WORKDIR /usr/src/app


COPY package*.json ./

RUN npm install

COPY . .

ARG BTOPIC='libros'
ARG BPORT=1883
ARG BHOST='broker'
ENV TOPIC ${BTOPIC}
ENV PORT ${BPORT}
ENV HOST ${BHOST}



ENTRYPOINT [ "node" , "index.js" ]

