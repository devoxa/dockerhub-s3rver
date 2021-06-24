FROM node:16-alpine

WORKDIR /application
COPY package.json yarn.lock ./
COPY patches ./patches
RUN yarn --silent --no-progress --frozen-lockfile
COPY entrypoint.sh ./

EXPOSE 4568
VOLUME /data

ENTRYPOINT ["./entrypoint.sh"]
