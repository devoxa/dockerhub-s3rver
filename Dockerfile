FROM node:14-alpine

WORKDIR /application
COPY package.json yarn.lock ./
RUN yarn --silent --no-progress --frozen-lockfile --production

EXPOSE 4568
VOLUME /data

ENTRYPOINT ["./node_modules/.bin/s3rver", "--no-vhost-buckets", "-p", "4568", "-d", "/data"]
