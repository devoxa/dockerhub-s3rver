FROM node:16-alpine

RUN apk add --no-cache tini
ENTRYPOINT ["/sbin/tini", "--"]

WORKDIR /application
COPY package.json yarn.lock ./
COPY patches ./patches
RUN yarn --silent --no-progress --frozen-lockfile

COPY run.sh ./

EXPOSE 4568
VOLUME /data

CMD ["./run.sh"]
