FROM node:10-alpine

WORKDIR /src

COPY package.json ./
COPY yarn.lock ./

RUN yarn

ARG TZ
ENV TZ $TZ

COPY . .

CMD \
    ./node_modules/.bin/ts-node index.ts
