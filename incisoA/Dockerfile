FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .
ARG ATOPIC='libros'
ENV topic ${ATOPIC}
ARG ABROKERIP='research.upb.edu'
ENV brokerip ${ABROKERIP}
ARG APORT=21212
ENV port ${APORT}

CMD [ "node", "index.js" ]