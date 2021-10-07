# syntax=docker/dockerfile:1

FROM node:16
ENV NODE_ENV=production

WORKDIR /app

COPY ["package.json", "yarn.lock*", "./"]

RUN yarn

COPY . .

CMD [ "yarn", "dev" ]
