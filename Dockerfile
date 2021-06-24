FROM node:16-alpine

RUN apk add --no-cache tini
ENTRYPOINT ["/sbin/tini", "--"]

WORKDIR /application
COPY package.json yarn.lock ./
COPY patches ./patches
RUN yarn --silent --no-progress --frozen-lockfile

EXPOSE 4568
VOLUME /data

CMD ["./node_modules/.bin/s3rver", "-a", "0.0.0.0", "-p", "4568", "-d", "/data", "$ARGS"]
